import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 513-clause unsatisfiable core of orbit_003, contradictory.
148 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem core003_false
    (v145 v146 v147 v148 v149 v150 v151 v152 v153 v154 v155 v160 v161 v163 v164 v165 v168 v169 v170 v171 v175 v176 v177 v178 v182 v185 v190 v194 v195 v196 v197 v198 v199 v200 v201 v202 v203 v204 v205 v206 v207 v208 v209 v210 v211 v212 v213 v214 v215 v216 v217 v218 v219 v220 v221 v222 v223 v224 v225 v226 v227 v228 v229 v230 v231 v232 v233 v235 v236 v237 v239 v240 v241 v242 v243 v244 v245 v246 v247 v248 v249 v250 v251 v252 v253 v254 v255 v256 v257 v258 v259 v260 v261 v262 v263 v264 v265 v266 v267 v268 v271 v272 v275 v276 v277 v278 v279 v280 v281 v282 v283 v284 v285 v286 v287 v288 v289 v290 v291 v292 v293 v294 v295 v296 v297 v299 v300 v301 v303 v304 v305 v306 v307 v308 v309 v312 v313 v314 v315 v317 v318 v320 v321 v322 v324 v327 v328 v329 v330 v331 v332 v333 v334 v335 v336 v337 v338 v339 v340 v341 v342 v343 v344 v345 v346 v347 v349 v350 v352 v355 v356 v357 v358 v361 v362 v363 v364 : Prop)
    (c1 : ¬v146 ∨ ¬v164 ∨ ¬v245 ∨ ¬v200 ∨ ¬v209 ∨ v155)
    (c2 : v145 ∨ ¬v151 ∨ ¬v200 ∨ ¬v205 ∨ v146 ∨ v213)
    (c3 : v150 ∨ v145 ∨ ¬v147 ∨ v201 ∨ v204 ∨ v219)
    (c4 : ¬v152 ∨ v176 ∨ ¬v206 ∨ v221 ∨ v161 ∨ v257)
    (c5 : v145 ∨ ¬v151 ∨ ¬v205 ∨ ¬v206 ∨ ¬v239 ∨ v152)
    (c6 : v195 ∨ v276 ∨ v151 ∨ ¬v240 ∨ v205 ∨ v160)
    (c7 : v220 ∨ ¬v209 ∨ v151 ∨ ¬v146 ∨ ¬v147 ∨ ¬v213)
    (c8 : ¬v146 ∨ ¬v168 ∨ ¬v284 ∨ ¬v209 ∨ ¬v164 ∨ v213)
    (c9 : v147 ∨ ¬v164 ∨ ¬v286 ∨ ¬v209 ∨ ¬v222 ∨ v177)
    (c10 : v165 ∨ v291 ∨ ¬v210 ∨ v182 ∨ v227 ∨ ¬v148)
    (c11 : ¬v148 ∨ ¬v216 ∨ ¬v154 ∨ ¬v146 ∨ v210 ∨ v229)
    (c12 : v168 ∨ ¬v195 ∨ ¬v151 ∨ v213 ∨ v240 ∨ v304)
    (c13 : v146 ∨ ¬v214 ∨ ¬v242 ∨ ¬v215 ∨ ¬v152 ∨ v153)
    (c14 : v169 ∨ v198 ∨ ¬v307 ∨ ¬v214 ∨ v152 ∨ v243)
    (c15 : ¬v146 ∨ v154 ∨ ¬v244 ∨ ¬v153 ∨ v215 ∨ v216)
    (c16 : v146 ∨ ¬v216 ∨ ¬v215 ∨ ¬v154 ∨ v153 ∨ v244)
    (c17 : ¬v170 ∨ ¬v215 ∨ ¬v199 ∨ v153 ∨ v244 ∨ v308)
    (c18 : v150 ∨ ¬v235 ∨ ¬v147 ∨ ¬v220 ∨ v151 ∨ v219)
    (c19 : ¬v175 ∨ ¬v196 ∨ ¬v178 ∨ ¬v154 ∨ ¬v147 ∨ v151)
    (c20 : v176 ∨ v197 ∨ ¬v327 ∨ ¬v242 ∨ v221 ∨ ¬v152)
    (c21 : ¬v152 ∨ ¬v198 ∨ v221 ∨ v176 ∨ v243 ∨ v328)
    (c22 : v178 ∨ ¬v154 ∨ ¬v199 ∨ v329 ∨ v244 ∨ v223)
    (c23 : ¬v152 ∨ v148 ∨ ¬v227 ∨ ¬v226 ∨ v151 ∨ v239)
    (c24 : v148 ∨ ¬v153 ∨ ¬v244 ∨ ¬v229 ∨ ¬v228 ∨ v154)
    (c25 : ¬v149 ∨ ¬v233 ∨ ¬v240 ∨ v151 ∨ v153 ∨ v231)
    (c26 : ¬v150 ∨ ¬v239 ∨ v235 ∨ v152 ∨ ¬v151 ∨ v236)
    (c27 : v150 ∨ v237 ∨ ¬v240 ∨ v151 ∨ v153 ∨ ¬v235)
    (c28 : ¬v240 ∨ ¬v239 ∨ ¬v242 ∨ ¬v152 ∨ v151 ∨ v153)
    (c29 : ¬v194 ∨ ¬v239 ∨ ¬v242 ∨ ¬v152 ∨ v197 ∨ v361)
    (c30 : v195 ∨ ¬v153 ∨ ¬v244 ∨ ¬v363 ∨ v199 ∨ v240)
    (c31 : ¬v152 ∨ v154 ∨ ¬v244 ∨ ¬v153 ∨ v242 ∨ v243)
    (c32 : v243 ∨ v198 ∨ ¬v242 ∨ v197 ∨ ¬v152 ∨ v364)
    (c33 : ¬v197 ∨ v153 ∨ ¬v364 ∨ ¬v244 ∨ ¬v199 ∨ v242)
    (c34 : ¬v197 ∨ ¬v199 ∨ ¬v242 ∨ v153 ∨ v244 ∨ v364)
    (c35 : v199 ∨ v197 ∨ ¬v364 ∨ ¬v244 ∨ ¬v153 ∨ v242)
    (c36 : ¬v154 ∨ v243 ∨ ¬v364 ∨ v198 ∨ v199 ∨ ¬v244)
    (c37 : ¬v155 ∨ ¬v168 ∨ ¬v290 ∨ ¬v246 ∨ ¬v165 ∨ v249)
    (c38 : v163 ∨ v161 ∨ ¬v250 ∨ ¬v155 ∨ v252 ∨ v279)
    (c39 : ¬v171 ∨ ¬v155 ∨ ¬v308 ∨ ¬v251 ∨ ¬v170 ∨ v252)
    (c40 : ¬v190 ∨ ¬v160 ∨ ¬v320 ∨ ¬v271 ∨ ¬v256 ∨ v175)
    (c41 : ¬v161 ∨ ¬v198 ∨ ¬v364 ∨ ¬v278 ∨ ¬v197 ∨ v279)
    (c42 : ¬v163 ∨ ¬v198 ∨ ¬v364 ∨ v199 ∨ v279 ∨ v280)
    (c43 : ¬v178 ∨ ¬v164 ∨ ¬v285 ∨ ¬v176 ∨ ¬v328 ∨ v287)
    (c44 : ¬v169 ∨ ¬v168 ∨ ¬v291 ∨ ¬v165 ∨ v290 ∨ v303)
    (c45 : v168 ∨ ¬v195 ∨ ¬v361 ∨ v194 ∨ v303 ∨ v304)
    (c46 : ¬v169 ∨ v194 ∨ ¬v362 ∨ ¬v307 ∨ v198 ∨ v303)
    (c47 : v363 ∨ ¬v195 ∨ ¬v304 ∨ ¬v199 ∨ v308 ∨ v170)
    (c48 : v170 ∨ ¬v197 ∨ ¬v308 ∨ ¬v306 ∨ ¬v364 ∨ v199)
    (c49 : v171 ∨ ¬v198 ∨ ¬v307 ∨ ¬v364 ∨ ¬v308 ∨ v199)
    (c50 : ¬v177 ∨ ¬v197 ∨ ¬v364 ∨ v199 ∨ v327 ∨ v329)
    (c51 : ¬v178 ∨ ¬v198 ∨ ¬v364 ∨ v199 ∨ v328 ∨ v329)
    (c52 : ¬v194 ∨ ¬v198 ∨ ¬v364 ∨ ¬v361 ∨ v362 ∨ ¬v197)
    (c53 : v195 ∨ ¬v197 ∨ ¬v364 ∨ ¬v361 ∨ ¬v363 ∨ v199)
    (c54 : v196 ∨ ¬v199 ∨ ¬v362 ∨ ¬v198 ∨ v363 ∨ v364)
    (c55 : ¬v210 ∨ v200 ∨ v209 ∨ ¬v281 ∨ v245 ∨ v246)
    (c56 : v255 ∨ ¬v201 ∨ ¬v245 ∨ ¬v200 ∨ ¬v248 ∨ v204)
    (c57 : v212 ∨ ¬v209 ∨ ¬v245 ∨ ¬v248 ∨ ¬v200 ∨ v283)
    (c58 : ¬v213 ∨ ¬v209 ∨ v249 ∨ ¬v245 ∨ ¬v200 ∨ ¬v284)
    (c59 : ¬v209 ∨ ¬v245 ∨ ¬v250 ∨ v214 ∨ ¬v200 ∨ v285)
    (c60 : ¬v221 ∨ v201 ∨ ¬v285 ∨ ¬v257 ∨ ¬v209 ∨ v245)
    (c61 : v222 ∨ v201 ∨ ¬v207 ∨ v200 ∨ ¬v215 ∨ ¬v209)
    (c62 : v258 ∨ ¬v201 ∨ ¬v251 ∨ ¬v245 ∨ v207 ∨ ¬v200)
    (c63 : ¬v258 ∨ v201 ∨ ¬v207 ∨ v200 ∨ v245 ∨ v251)
    (c64 : ¬v216 ∨ v200 ∨ v209 ∨ v208 ∨ v201 ∨ v223)
    (c65 : v259 ∨ v200 ∨ v201 ∨ v208 ∨ v245 ∨ ¬v252)
    (c66 : v216 ∨ v200 ∨ v209 ∨ ¬v252 ∨ v245 ∨ v287)
    (c67 : v246 ∨ v202 ∨ ¬v203 ∨ ¬v200 ∨ v247 ∨ v260)
    (c68 : v203 ∨ v260 ∨ ¬v246 ∨ v247 ∨ v202 ∨ ¬v200)
    (c69 : ¬v204 ∨ ¬v261 ∨ ¬v246 ∨ ¬v248 ∨ ¬v200 ∨ v202)
    (c70 : v246 ∨ v262 ∨ ¬v205 ∨ ¬v200 ∨ v249 ∨ v202)
    (c71 : v205 ∨ v262 ∨ ¬v246 ∨ v202 ∨ v249 ∨ ¬v200)
    (c72 : v206 ∨ v214 ∨ v227 ∨ v200 ∨ ¬v202 ∨ v210)
    (c73 : ¬v263 ∨ ¬v200 ∨ ¬v246 ∨ ¬v250 ∨ ¬v206 ∨ v202)
    (c74 : v291 ∨ v206 ∨ v227 ∨ ¬v263 ∨ v250 ∨ v214)
    (c75 : v200 ∨ ¬v204 ∨ ¬v247 ∨ ¬v203 ∨ v248 ∨ v266)
    (c76 : v212 ∨ ¬v230 ∨ ¬v294 ∨ v204 ∨ v248 ∨ v266)
    (c77 : ¬v211 ∨ v233 ∨ ¬v207 ∨ v200 ∨ ¬v215 ∨ v203)
    (c78 : ¬v205 ∨ ¬v204 ∨ ¬v249 ∨ ¬v271 ∨ v200 ∨ v248)
    (c79 : ¬v214 ∨ ¬v212 ∨ ¬v236 ∨ ¬v206 ∨ ¬v200 ∨ v204)
    (c80 : ¬v237 ∨ ¬v204 ∨ ¬v207 ∨ ¬v215 ∨ v200 ∨ v212)
    (c81 : v200 ∨ ¬v205 ∨ v249 ∨ ¬v250 ∨ ¬v206 ∨ ¬v275)
    (c82 : v214 ∨ ¬v303 ∨ ¬v239 ∨ v206 ∨ v250 ∨ v275)
    (c83 : ¬v200 ∨ ¬v207 ∨ v251 ∨ v250 ∨ v206 ∨ v278)
    (c84 : v200 ∨ ¬v251 ∨ ¬v206 ∨ ¬v250 ∨ ¬v278 ∨ v207)
    (c85 : ¬v215 ∨ v207 ∨ ¬v306 ∨ ¬v278 ∨ ¬v251 ∨ v242)
    (c86 : v215 ∨ ¬v207 ∨ v251 ∨ ¬v242 ∨ v278 ∨ v306)
    (c87 : v215 ∨ ¬v244 ∨ v251 ∨ ¬v308 ∨ v207 ∨ v280)
    (c88 : v218 ∨ v254 ∨ ¬v203 ∨ ¬v224 ∨ v260 ∨ v309)
    (c89 : ¬v220 ∨ ¬v202 ∨ ¬v201 ∨ ¬v217 ∨ v205 ∨ v226)
    (c90 : v253 ∨ ¬v201 ∨ ¬v206 ∨ v202 ∨ v257 ∨ v263)
    (c91 : ¬v253 ∨ ¬v202 ∨ ¬v257 ∨ v201 ∨ ¬v263 ∨ v206)
    (c92 : ¬v264 ∨ v228 ∨ v202 ∨ v217 ∨ v253 ∨ v313)
    (c93 : ¬v219 ∨ ¬v266 ∨ ¬v315 ∨ ¬v255 ∨ v204 ∨ v230)
    (c94 : ¬v254 ∨ ¬v201 ∨ ¬v206 ∨ ¬v203 ∨ ¬v268 ∨ v257)
    (c95 : v221 ∨ v257 ∨ ¬v324 ∨ ¬v275 ∨ ¬v206 ∨ v239)
    (c96 : v205 ∨ v240 ∨ ¬v207 ∨ v220 ∨ v222 ∨ ¬v201)
    (c97 : v243 ∨ v206 ∨ ¬v223 ∨ v208 ∨ v221 ∨ v201)
    (c98 : v221 ∨ ¬v223 ∨ ¬v208 ∨ ¬v206 ∨ ¬v243 ∨ v201)
    (c99 : v226 ∨ v331 ∨ ¬v224 ∨ v260 ∨ v202 ∨ v262)
    (c100 : v271 ∨ v235 ∨ ¬v226 ∨ ¬v335 ∨ v262 ∨ ¬v205)
    (c101 : ¬v263 ∨ v202 ∨ ¬v206 ∨ ¬v275 ∨ ¬v205 ∨ v262)
    (c102 : ¬v262 ∨ ¬v226 ∨ ¬v275 ∨ v339 ∨ v239 ∨ ¬v205)
    (c103 : ¬v239 ∨ v339 ∨ ¬v275 ∨ ¬v206 ∨ v263 ∨ ¬v227)
    (c104 : v226 ∨ ¬v205 ∨ ¬v208 ∨ ¬v241 ∨ v202 ∨ ¬v229)
    (c105 : v263 ∨ ¬v202 ∨ ¬v279 ∨ v206 ∨ v208 ∨ ¬v265)
    (c106 : ¬v263 ∨ v202 ∨ v279 ∨ ¬v208 ∨ ¬v206 ∨ v265)
    (c107 : v227 ∨ v263 ∨ ¬v343 ∨ v202 ∨ ¬v229 ∨ v265)
    (c108 : v343 ∨ ¬v227 ∨ ¬v265 ∨ ¬v202 ∨ v229 ∨ ¬v263)
    (c109 : ¬v279 ∨ v343 ∨ ¬v243 ∨ v208 ∨ ¬v265 ∨ v229)
    (c110 : v243 ∨ ¬v229 ∨ ¬v208 ∨ ¬v343 ∨ v279 ∨ v265)
    (c111 : ¬v344 ∨ ¬v244 ∨ ¬v265 ∨ ¬v229 ∨ ¬v208 ∨ v280)
    (c112 : v235 ∨ v230 ∨ ¬v345 ∨ v204 ∨ ¬v266 ∨ v271)
    (c113 : ¬v272 ∨ v204 ∨ ¬v206 ∨ ¬v203 ∨ ¬v266 ∨ ¬v268)
    (c114 : ¬v231 ∨ v349 ∨ ¬v268 ∨ ¬v203 ∨ v232 ∨ ¬v267)
    (c115 : v205 ∨ v271 ∨ ¬v206 ∨ ¬v275 ∨ v204 ∨ v272)
    (c116 : ¬v239 ∨ v355 ∨ ¬v275 ∨ ¬v206 ∨ v272 ∨ ¬v236)
    (c117 : v205 ∨ v277 ∨ ¬v275 ∨ ¬v208 ∨ ¬v206 ∨ v279)
    (c118 : ¬v277 ∨ v241 ∨ ¬v362 ∨ v239 ∨ ¬v205 ∨ v275)
    (c119 : v278 ∨ v207 ∨ ¬v206 ∨ v279 ∨ ¬v208 ∨ v280)
    (c120 : v207 ∨ v278 ∨ ¬v364 ∨ v242 ∨ ¬v244 ∨ v280)
    (c121 : v364 ∨ ¬v244 ∨ ¬v242 ∨ ¬v207 ∨ v278 ∨ ¬v280)
    (c122 : v210 ∨ ¬v222 ∨ v217 ∨ ¬v228 ∨ v215 ∨ ¬v209)
    (c123 : ¬v228 ∨ v313 ∨ ¬v286 ∨ ¬v292 ∨ v215 ∨ v222)
    (c124 : ¬v217 ∨ ¬v209 ∨ ¬v287 ∨ v281 ∨ ¬v223 ∨ v314)
    (c125 : v210 ∨ v217 ∨ ¬v314 ∨ ¬v281 ∨ v229 ∨ v293)
    (c126 : ¬v216 ∨ ¬v223 ∨ ¬v314 ∨ v229 ∨ v287 ∨ v293)
    (c127 : ¬v219 ∨ ¬v212 ∨ ¬v315 ∨ v230 ∨ v283 ∨ v294)
    (c128 : v211 ∨ ¬v215 ∨ v209 ∨ ¬v297 ∨ v282 ∨ v286)
    (c129 : ¬v219 ∨ ¬v220 ∨ ¬v283 ∨ ¬v320 ∨ ¬v209 ∨ v284)
    (c130 : ¬v320 ∨ ¬v220 ∨ v235 ∨ ¬v213 ∨ v284 ∨ v299)
    (c131 : ¬v212 ∨ v209 ∨ ¬v283 ∨ ¬v215 ∨ v286 ∨ v301)
    (c132 : ¬v213 ∨ ¬v209 ∨ ¬v284 ∨ ¬v286 ∨ v215 ∨ v304)
    (c133 : ¬v214 ∨ v209 ∨ ¬v285 ∨ ¬v215 ∨ v286 ∨ v306)
    (c134 : ¬v222 ∨ ¬v209 ∨ ¬v286 ∨ ¬v221 ∨ v285 ∨ v327)
    (c135 : ¬v209 ∨ ¬v223 ∨ ¬v287 ∨ ¬v221 ∨ v285 ∨ v328)
    (c136 : ¬v216 ∨ ¬v215 ∨ v209 ∨ ¬v222 ∨ v223 ∨ v244)
    (c137 : ¬v216 ∨ ¬v222 ∨ ¬v244 ∨ ¬v209 ∨ ¬v223 ∨ v215)
    (c138 : v222 ∨ v329 ∨ ¬v286 ∨ ¬v308 ∨ ¬v244 ∨ v215)
    (c139 : v291 ∨ v214 ∨ v296 ∨ ¬v227 ∨ v232 ∨ v332)
    (c140 : ¬v342 ∨ ¬v228 ∨ ¬v306 ∨ ¬v292 ∨ v215 ∨ v242)
    (c141 : v228 ∨ v344 ∨ ¬v308 ∨ ¬v292 ∨ ¬v244 ∨ v215)
    (c142 : ¬v212 ∨ v235 ∨ ¬v345 ∨ ¬v299 ∨ v230 ∨ v294)
    (c143 : ¬v213 ∨ ¬v295 ∨ ¬v299 ∨ ¬v231 ∨ v235 ∨ v345)
    (c144 : v212 ∨ ¬v236 ∨ ¬v300 ∨ v235 ∨ ¬v299 ∨ v355)
    (c145 : ¬v239 ∨ v355 ∨ ¬v300 ∨ ¬v236 ∨ v303 ∨ v214)
    (c146 : ¬v214 ∨ ¬v243 ∨ ¬v364 ∨ ¬v307 ∨ ¬v306 ∨ v242)
    (c147 : ¬v215 ∨ ¬v244 ∨ ¬v364 ∨ v242 ∨ ¬v306 ∨ ¬v308)
    (c148 : v243 ∨ ¬v223 ∨ ¬v229 ∨ ¬v227 ∨ v221 ∨ v217)
    (c149 : v223 ∨ ¬v329 ∨ ¬v244 ∨ ¬v229 ∨ ¬v344 ∨ v314)
    (c150 : ¬v218 ∨ v235 ∨ v231 ∨ v230 ∨ v219 ∨ ¬v220)
    (c151 : v236 ∨ ¬v346 ∨ ¬v315 ∨ v230 ∨ v219 ∨ v321)
    (c152 : v221 ∨ v242 ∨ ¬v364 ∨ ¬v243 ∨ v328 ∨ v327)
    (c153 : ¬v222 ∨ v244 ∨ ¬v327 ∨ ¬v242 ∨ ¬v329 ∨ v364)
    (c154 : ¬v225 ∨ v235 ∨ v230 ∨ ¬v330 ∨ v335 ∨ v345)
    (c155 : ¬v334 ∨ ¬v338 ∨ ¬v330 ∨ ¬v229 ∨ ¬v224 ∨ v225)
    (c156 : v231 ∨ ¬v331 ∨ ¬v224 ∨ v232 ∨ v332 ∨ v349)
    (c157 : ¬v232 ∨ ¬v349 ∨ ¬v227 ∨ v239 ∨ v332 ∨ v339)
    (c158 : ¬v232 ∨ ¬v352 ∨ v332 ∨ v242 ∨ ¬v227 ∨ v342)
    (c159 : ¬v338 ∨ ¬v229 ∨ ¬v226 ∨ ¬v341 ∨ v335 ∨ v225)
    (c160 : v226 ∨ ¬v229 ∨ v339 ∨ ¬v343 ∨ ¬v227 ∨ ¬v341)
    (c161 : ¬v362 ∨ ¬v343 ∨ ¬v227 ∨ ¬v339 ∨ ¬v243 ∨ v239)
    (c162 : ¬v231 ∨ ¬v233 ∨ ¬v240 ∨ ¬v235 ∨ ¬v230 ∨ v237)
    (c163 : v241 ∨ v361 ∨ ¬v362 ∨ v239 ∨ v240 ∨ v363)
    (c164 : v243 ∨ v239 ∨ ¬v242 ∨ v361 ∨ v362 ∨ v364)
    (c165 : ¬v239 ∨ ¬v362 ∨ ¬v364 ∨ ¬v361 ∨ ¬v243 ∨ v242)
    (c166 : ¬v240 ∨ ¬v363 ∨ ¬v364 ∨ ¬v244 ∨ ¬v361 ∨ v242)
    (c167 : v241 ∨ ¬v363 ∨ ¬v364 ∨ ¬v244 ∨ ¬v243 ∨ v362)
    (c168 : v292 ∨ ¬v245 ∨ ¬v246 ∨ ¬v286 ∨ ¬v251 ∨ v281)
    (c169 : v264 ∨ v313 ∨ ¬v286 ∨ ¬v292 ∨ ¬v251 ∨ ¬v258)
    (c170 : v245 ∨ ¬v246 ∨ ¬v281 ∨ ¬v252 ∨ v287 ∨ v293)
    (c171 : v248 ∨ ¬v245 ∨ ¬v282 ∨ v247 ∨ v283 ∨ v294)
    (c172 : ¬v297 ∨ ¬v245 ∨ ¬v282 ∨ v247 ∨ ¬v286 ∨ ¬v251)
    (c173 : v245 ∨ ¬v248 ∨ ¬v283 ∨ ¬v249 ∨ v284 ∨ v299)
    (c174 : ¬v321 ∨ ¬v300 ∨ ¬v250 ∨ v257 ∨ v272 ∨ v285)
    (c175 : v301 ∨ ¬v251 ∨ ¬v248 ∨ ¬v286 ∨ v283 ∨ ¬v245)
    (c176 : v245 ∨ ¬v301 ∨ ¬v283 ∨ v248 ∨ v251 ∨ v286)
    (c177 : v251 ∨ v250 ∨ ¬v285 ∨ ¬v245 ∨ v286 ∨ v306)
    (c178 : v278 ∨ v250 ∨ ¬v285 ∨ ¬v327 ∨ v257 ∨ v306)
    (c179 : ¬v257 ∨ ¬v278 ∨ v285 ∨ ¬v306 ∨ ¬v250 ∨ v327)
    (c180 : v245 ∨ ¬v287 ∨ ¬v308 ∨ v252 ∨ ¬v286 ∨ ¬v251)
    (c181 : v329 ∨ ¬v258 ∨ ¬v286 ∨ ¬v308 ∨ v280 ∨ ¬v251)
    (c182 : v268 ∨ v247 ∨ ¬v250 ∨ ¬v246 ∨ v263 ∨ v260)
    (c183 : v290 ∨ v335 ∨ v262 ∨ v271 ∨ v249 ∨ ¬v299)
    (c184 : v343 ∨ ¬v291 ∨ ¬v265 ∨ v246 ∨ v293 ∨ ¬v263)
    (c185 : v291 ∨ ¬v343 ∨ v263 ∨ ¬v246 ∨ ¬v293 ∨ v265)
    (c186 : ¬v279 ∨ v343 ∨ ¬v307 ∨ ¬v252 ∨ v293 ∨ ¬v265)
    (c187 : v246 ∨ ¬v292 ∨ ¬v251 ∨ ¬v293 ∨ ¬v308 ∨ v252)
    (c188 : ¬v264 ∨ v344 ∨ ¬v293 ∨ ¬v292 ∨ ¬v246 ∨ v265)
    (c189 : v297 ∨ ¬v247 ∨ ¬v294 ∨ v251 ∨ v248 ∨ v301)
    (c190 : ¬v303 ∨ v304 ∨ v251 ∨ v250 ∨ ¬v249 ∨ v306)
    (c191 : ¬v304 ∨ ¬v251 ∨ ¬v250 ∨ ¬v306 ∨ v249 ∨ v303)
    (c192 : ¬v304 ∨ ¬v276 ∨ ¬v361 ∨ ¬v275 ∨ v249 ∨ v303)
    (c193 : ¬v303 ∨ v278 ∨ ¬v361 ∨ v250 ∨ v275 ∨ v306)
    (c194 : v361 ∨ ¬v250 ∨ v303 ∨ ¬v278 ∨ ¬v306 ∨ ¬v275)
    (c195 : ¬v304 ∨ ¬v251 ∨ ¬v305 ∨ ¬v308 ∨ v249 ∨ v252)
    (c196 : v279 ∨ ¬v252 ∨ v250 ∨ v251 ∨ v278 ∨ ¬v280)
    (c197 : v308 ∨ ¬v251 ∨ ¬v307 ∨ ¬v306 ∨ v252 ∨ ¬v250)
    (c198 : ¬v306 ∨ ¬v308 ∨ ¬v252 ∨ ¬v307 ∨ ¬v250 ∨ v251)
    (c199 : v306 ∨ v307 ∨ v250 ∨ ¬v251 ∨ v252 ∨ v308)
    (c200 : v364 ∨ ¬v251 ∨ v278 ∨ v306 ∨ ¬v280 ∨ v308)
    (c201 : v364 ∨ ¬v308 ∨ ¬v278 ∨ ¬v251 ∨ v280 ∨ ¬v306)
    (c202 : ¬v279 ∨ v280 ∨ ¬v307 ∨ ¬v364 ∨ v252 ∨ ¬v308)
    (c203 : ¬v312 ∨ v257 ∨ ¬v343 ∨ v263 ∨ v279 ∨ v328)
    (c204 : ¬v279 ∨ ¬v343 ∨ ¬v314 ∨ v328 ∨ ¬v265 ∨ ¬v259)
    (c205 : ¬v259 ∨ v253 ∨ ¬v314 ∨ ¬v313 ∨ v258 ∨ v329)
    (c206 : ¬v264 ∨ v313 ∨ ¬v344 ∨ v265 ∨ ¬v253 ∨ v314)
    (c207 : ¬v321 ∨ v254 ∨ ¬v315 ∨ ¬v255 ∨ ¬v317 ∨ v257)
    (c208 : v322 ∨ v318 ∨ ¬v315 ∨ v254 ∨ ¬v255 ∨ ¬v258)
    (c209 : ¬v318 ∨ ¬v258 ∨ ¬v317 ∨ v254 ∨ v257 ∨ v327)
    (c210 : v352 ∨ ¬v317 ∨ ¬v278 ∨ v257 ∨ v327 ∨ ¬v268)
    (c211 : v322 ∨ v321 ∨ v257 ∨ ¬v258 ∨ ¬v255 ∨ v327)
    (c212 : ¬v358 ∨ v321 ∨ ¬v278 ∨ v257 ∨ v272 ∨ v327)
    (c213 : v256 ∨ ¬v279 ∨ ¬v277 ∨ ¬v257 ∨ ¬v259 ∨ v275)
    (c214 : v257 ∨ ¬v275 ∨ v324 ∨ v279 ∨ v328 ∨ v362)
    (c215 : ¬v257 ∨ v328 ∨ ¬v364 ∨ ¬v278 ∨ v279 ∨ v327)
    (c216 : ¬v262 ∨ ¬v261 ∨ ¬v266 ∨ v260 ∨ v267 ∨ v271)
    (c217 : v261 ∨ v330 ∨ ¬v266 ∨ v345 ∨ v335 ∨ v271)
    (c218 : v261 ∨ ¬v336 ∨ v260 ∨ ¬v330 ∨ v263 ∨ v332)
    (c219 : ¬v262 ∨ v331 ∨ v260 ∨ v339 ∨ v332 ∨ v263)
    (c220 : ¬v339 ∨ ¬v349 ∨ ¬v275 ∨ ¬v268 ∨ v263 ∨ v332)
    (c221 : ¬v262 ∨ ¬v336 ∨ ¬v335 ∨ ¬v261 ∨ v263 ∨ v339)
    (c222 : ¬v338 ∨ v335 ∨ v262 ∨ ¬v341 ∨ v265 ∨ ¬v261)
    (c223 : v277 ∨ v341 ∨ ¬v275 ∨ v339 ∨ v262 ∨ v362)
    (c224 : ¬v362 ∨ ¬v343 ∨ v263 ∨ ¬v339 ∨ ¬v275 ∨ v279)
    (c225 : ¬v342 ∨ v264 ∨ v263 ∨ ¬v344 ∨ v265 ∨ v343)
    (c226 : ¬v342 ∨ ¬v343 ∨ v263 ∨ ¬v278 ∨ ¬v364 ∨ v279)
    (c227 : ¬v279 ∨ ¬v343 ∨ v280 ∨ ¬v364 ∨ ¬v344 ∨ v265)
    (c228 : v276 ∨ v277 ∨ ¬v278 ∨ ¬v275 ∨ v279 ∨ v280)
    (c229 : ¬v279 ∨ v362 ∨ v275 ∨ v278 ∨ v361 ∨ ¬v364)
    (c230 : ¬v279 ∨ v362 ∨ ¬v278 ∨ ¬v361 ∨ ¬v275 ∨ ¬v364)
    (c231 : v361 ∨ v279 ∨ v362 ∨ ¬v278 ∨ ¬v275 ∨ ¬v364)
    (c232 : v363 ∨ v364 ∨ v278 ∨ v361 ∨ ¬v276 ∨ ¬v280)
    (c233 : ¬v362 ∨ v277 ∨ ¬v280 ∨ ¬v279 ∨ v363 ∨ v364)
    (c234 : ¬v277 ∨ ¬v363 ∨ ¬v364 ∨ v280 ∨ v279 ∨ v362)
    (c235 : v317 ∨ v312 ∨ ¬v282 ∨ v281 ∨ v285 ∨ v309)
    (c236 : ¬v333 ∨ v297 ∨ ¬v282 ∨ ¬v288 ∨ v309 ∨ v318)
    (c237 : v291 ∨ v290 ∨ v281 ∨ ¬v284 ∨ v285 ∨ v303)
    (c238 : v292 ∨ v291 ∨ v281 ∨ v285 ∨ ¬v306 ∨ ¬v286)
    (c239 : ¬v342 ∨ v291 ∨ v285 ∨ v312 ∨ ¬v306 ∨ v327)
    (c240 : v313 ∨ v342 ∨ v286 ∨ v306 ∨ ¬v327 ∨ v292)
    (c241 : ¬v342 ∨ ¬v313 ∨ ¬v306 ∨ ¬v292 ∨ ¬v286 ∨ v327)
    (c242 : v307 ∨ ¬v287 ∨ ¬v291 ∨ v281 ∨ v285 ∨ ¬v293)
    (c243 : v307 ∨ v328 ∨ ¬v343 ∨ v314 ∨ ¬v287 ∨ ¬v293)
    (c244 : v292 ∨ ¬v287 ∨ ¬v308 ∨ ¬v293 ∨ v281 ∨ ¬v286)
    (c245 : ¬v292 ∨ v308 ∨ v286 ∨ v293 ∨ ¬v281 ∨ v287)
    (c246 : ¬v313 ∨ v344 ∨ ¬v293 ∨ v281 ∨ v314 ∨ ¬v292)
    (c247 : v329 ∨ ¬v344 ∨ v287 ∨ v293 ∨ v308 ∨ ¬v314)
    (c248 : ¬v329 ∨ v344 ∨ ¬v293 ∨ ¬v287 ∨ v314 ∨ ¬v308)
    (c249 : v347 ∨ v318 ∨ v294 ∨ ¬v315 ∨ ¬v282 ∨ v297)
    (c250 : ¬v321 ∨ ¬v355 ∨ ¬v324 ∨ ¬v300 ∨ v285 ∨ v303)
    (c251 : v305 ∨ v307 ∨ ¬v284 ∨ ¬v287 ∨ v285 ∨ v303)
    (c252 : v307 ∨ ¬v362 ∨ v285 ∨ ¬v324 ∨ v303 ∨ v328)
    (c253 : v307 ∨ ¬v306 ∨ v308 ∨ v285 ∨ ¬v287 ∨ ¬v286)
    (c254 : ¬v328 ∨ ¬v329 ∨ ¬v287 ∨ ¬v286 ∨ v285 ∨ v327)
    (c255 : v364 ∨ v307 ∨ ¬v306 ∨ v327 ∨ v328 ∨ v285)
    (c256 : ¬v328 ∨ ¬v364 ∨ ¬v306 ∨ v285 ∨ ¬v307 ∨ v327)
    (c257 : v364 ∨ v328 ∨ ¬v285 ∨ v306 ∨ ¬v327 ∨ v307)
    (c258 : v329 ∨ ¬v364 ∨ v308 ∨ ¬v306 ∨ v327 ∨ ¬v286)
    (c259 : ¬v289 ∨ ¬v336 ∨ ¬v291 ∨ ¬v330 ∨ ¬v288 ∨ v332)
    (c260 : v290 ∨ v331 ∨ ¬v288 ∨ ¬v291 ∨ v332 ∨ v339)
    (c261 : v295 ∨ ¬v331 ∨ ¬v288 ∨ v297 ∨ v333 ∨ v350)
    (c262 : v334 ∨ ¬v331 ∨ ¬v293 ∨ ¬v341 ∨ ¬v288 ∨ ¬v290)
    (c263 : ¬v296 ∨ ¬v291 ∨ ¬v306 ∨ ¬v292 ∨ ¬v288 ∨ v297)
    (c264 : ¬v340 ∨ ¬v363 ∨ ¬v344 ∨ ¬v308 ∨ ¬v292 ∨ v304)
    (c265 : ¬v342 ∨ v343 ∨ ¬v293 ∨ ¬v292 ∨ ¬v291 ∨ ¬v344)
    (c266 : v344 ∨ ¬v343 ∨ ¬v308 ∨ ¬v364 ∨ ¬v307 ∨ ¬v293)
    (c267 : v300 ∨ ¬v352 ∨ ¬v346 ∨ v296 ∨ ¬v306 ∨ v358)
    (c268 : ¬v303 ∨ v307 ∨ ¬v362 ∨ v306 ∨ ¬v364 ∨ v361)
    (c269 : ¬v356 ∨ ¬v322 ∨ v320 ∨ ¬v355 ∨ v321 ∨ v358)
    (c270 : ¬v328 ∨ ¬v362 ∨ ¬v364 ∨ ¬v361 ∨ ¬v324 ∨ v327)
    (c271 : v336 ∨ ¬v335 ∨ ¬v330 ∨ v332 ∨ v339 ∨ v331)
    (c272 : ¬v345 ∨ ¬v331 ∨ ¬v346 ∨ ¬v330 ∨ v332 ∨ v349)
    (c273 : v345 ∨ v331 ∨ ¬v349 ∨ ¬v330 ∨ v332 ∨ ¬v346)
    (c274 : v336 ∨ v330 ∨ v345 ∨ ¬v346 ∨ v335 ∨ v355)
    (c275 : v355 ∨ ¬v339 ∨ ¬v345 ∨ v331 ∨ v349 ∨ ¬v335)
    (c276 : v355 ∨ ¬v339 ∨ ¬v336 ∨ v332 ∨ v349 ∨ ¬v346)
    (c277 : v337 ∨ v330 ∨ v345 ∨ ¬v347 ∨ v335 ∨ v356)
    (c278 : ¬v350 ∨ ¬v331 ∨ ¬v352 ∨ v332 ∨ v333 ∨ v349)
    (c279 : v340 ∨ ¬v339 ∨ ¬v335 ∨ ¬v361 ∨ v355 ∨ v356)
    (c280 : ¬v340 ∨ ¬v337 ∨ ¬v361 ∨ v342 ∨ v356 ∨ v358)
    (c281 : v357 ∨ ¬v341 ∨ v339 ∨ v335 ∨ v355 ∨ ¬v362)
    (c282 : ¬v338 ∨ ¬v344 ∨ v335 ∨ ¬v341 ∨ ¬v337 ∨ v340)
    (c283 : v341 ∨ ¬v363 ∨ ¬v364 ∨ ¬v343 ∨ ¬v344 ∨ v362)
    (c284 : ¬v363 ∨ v357 ∨ ¬v361 ∨ v355 ∨ v356 ∨ v362)
    (c285 : v165 ∨ v146 ∨ ¬v210 ∨ ¬v148)
    (c286 : ¬v182 ∨ ¬v148 ∨ v152 ∨ v227)
    (c287 : v185 ∨ ¬v150 ∨ ¬v230 ∨ v149)
    (c288 : v154 ∨ ¬v199 ∨ v244 ∨ ¬v153)
    (c289 : v164 ∨ ¬v170 ∨ ¬v286 ∨ v177)
    (c290 : v164 ∨ ¬v171 ∨ ¬v287 ∨ v178)
    (c291 : ¬v176 ∨ ¬v197 ∨ v177 ∨ v327)
    (c292 : ¬v198 ∨ v197 ∨ ¬v364 ∨ v199)
    (c293 : v203 ∨ ¬v268 ∨ ¬v206 ∨ v232)
    (c294 : v205 ∨ v239 ∨ ¬v275 ∨ ¬v206)
    (c295 : ¬v206 ∨ v278 ∨ ¬v242 ∨ v207)
    (c296 : v206 ∨ v242 ∨ ¬v207 ∨ ¬v278)
    (c297 : ¬v243 ∨ ¬v206 ∨ v208 ∨ v279)
    (c298 : ¬v244 ∨ v208 ∨ ¬v207 ∨ v280)
    (c299 : v244 ∨ v207 ∨ ¬v280 ∨ ¬v208)
    (c300 : v299 ∨ ¬v235 ∨ ¬v212 ∨ v213)
    (c301 : v213 ∨ ¬v303 ∨ v239 ∨ ¬v214)
    (c302 : v223 ∨ ¬v217 ∨ ¬v229 ∨ v314)
    (c303 : v220 ∨ ¬v221 ∨ ¬v324 ∨ v239)
    (c304 : v223 ∨ ¬v222 ∨ ¬v244 ∨ v329)
    (c305 : ¬v239 ∨ v240 ∨ ¬v242 ∨ v361)
    (c306 : ¬v241 ∨ v243 ∨ ¬v362 ∨ v239)
    (c307 : v246 ∨ v265 ∨ ¬v293 ∨ ¬v252)
    (c308 : ¬v249 ∨ ¬v275 ∨ v250 ∨ v303)
    (c309 : ¬v303 ∨ v249 ∨ ¬v250 ∨ v275)
    (c310 : ¬v279 ∨ v307 ∨ v252 ∨ ¬v250)
    (c311 : v251 ∨ ¬v308 ∨ ¬v252 ∨ v280)
    (c312 : ¬v257 ∨ ¬v312 ∨ v263 ∨ v253)
    (c313 : v266 ∨ ¬v261 ∨ v260 ∨ ¬v330)
    (c314 : ¬v262 ∨ ¬v331 ∨ v260 ∨ v267)
    (c315 : v355 ∨ ¬v271 ∨ ¬v275 ∨ v272)
    (c316 : ¬v309 ∨ v288 ∨ v281 ∨ ¬v282)
    (c317 : v293 ∨ ¬v314 ∨ ¬v287 ∨ v281)
    (c318 : v283 ∨ ¬v282 ∨ ¬v294 ∨ v315)
    (c319 : ¬v315 ∨ v294 ∨ ¬v283 ∨ v282)
    (c320 : ¬v299 ∨ ¬v283 ∨ v284 ∨ v320)
    (c321 : ¬v303 ∨ v285 ∨ ¬v284 ∨ v324)
    (c322 : ¬v285 ∨ ¬v324 ∨ v284 ∨ v303)
    (c323 : ¬v306 ∨ ¬v285 ∨ v327 ∨ v286)
    (c324 : v306 ∨ ¬v327 ∨ v285 ∨ ¬v286)
    (c325 : ¬v328 ∨ v307 ∨ v285 ∨ ¬v287)
    (c326 : v299 ∨ v289 ∨ ¬v290 ∨ ¬v335)
    (c327 : v299 ∨ ¬v355 ∨ ¬v300 ∨ v303)
    (c328 : v306 ∨ ¬v307 ∨ v308 ∨ ¬v364)
    (c329 : ¬v320 ∨ v321 ∨ v355 ∨ ¬v324)
    (c330 : v345 ∨ ¬v335 ∨ ¬v330 ∨ v331)
    (c331 : ¬v340 ∨ ¬v361 ∨ v339 ∨ v342)
    (c332 : ¬v355 ∨ v345 ∨ ¬v346 ∨ v349)
    (c333 : ¬v356 ∨ v355 ∨ ¬v361 ∨ v358)
    (c334 : ¬v185 ∨ ¬v150 ∨ ¬v230 ∨ v149)
    (c335 : v190 ∨ ¬v150 ∨ v151 ∨ ¬v235)
    (c336 : v194 ∨ v151 ∨ ¬v239 ∨ v152)
    (c337 : ¬v194 ∨ ¬v239 ∨ v151 ∨ v152)
    (c338 : ¬v194 ∨ ¬v151 ∨ ¬v239 ∨ v152)
    (c339 : ¬v152 ∨ ¬v151 ∨ v194 ∨ v239)
    (c340 : ¬v152 ∨ ¬v151 ∨ ¬v239 ∨ v194)
    (c341 : ¬v194 ∨ ¬v152 ∨ ¬v151 ∨ v239)
    (c342 : v153 ∨ v197 ∨ v152 ∨ v242)
    (c343 : v197 ∨ v152 ∨ ¬v242 ∨ v153)
    (c344 : ¬v152 ∨ v153 ∨ v197 ∨ v242)
    (c345 : v153 ∨ v199 ∨ v244 ∨ v154)
    (c346 : v153 ∨ v154 ∨ ¬v244 ∨ v199)
    (c347 : v153 ∨ v154 ∨ ¬v199 ∨ v244)
    (c348 : v153 ∨ ¬v154 ∨ v199 ∨ v244)
    (c349 : ¬v153 ∨ v199 ∨ v244 ∨ v154)
    (c350 : v154 ∨ ¬v199 ∨ ¬v244 ∨ ¬v153)
    (c351 : ¬v154 ∨ v199 ∨ ¬v153 ∨ v244)
    (c352 : ¬v154 ∨ ¬v199 ∨ v244 ∨ ¬v153)
    (c353 : ¬v199 ∨ ¬v154 ∨ ¬v244 ∨ ¬v153)
    (c354 : v224 ∨ ¬v203 ∨ v260 ∨ v202)
    (c355 : v203 ∨ v266 ∨ v230 ∨ v204)
    (c356 : v203 ∨ ¬v204 ∨ v230 ∨ v266)
    (c357 : v266 ∨ ¬v203 ∨ v230 ∨ v204)
    (c358 : ¬v230 ∨ v204 ∨ ¬v266 ∨ ¬v203)
    (c359 : v230 ∨ ¬v204 ∨ ¬v266 ∨ ¬v203)
    (c360 : ¬v230 ∨ ¬v204 ∨ ¬v266 ∨ ¬v203)
    (c361 : ¬v235 ∨ v271 ∨ ¬v205 ∨ v204)
    (c362 : v235 ∨ ¬v204 ∨ ¬v271 ∨ v205)
    (c363 : v206 ∨ ¬v205 ∨ ¬v275 ∨ v239)
    (c364 : v206 ∨ v278 ∨ v242 ∨ v207)
    (c365 : v206 ∨ v207 ∨ v242 ∨ ¬v278)
    (c366 : v206 ∨ v278 ∨ ¬v242 ∨ v207)
    (c367 : v206 ∨ v207 ∨ ¬v242 ∨ ¬v278)
    (c368 : v278 ∨ v242 ∨ ¬v207 ∨ v206)
    (c369 : v206 ∨ ¬v207 ∨ ¬v242 ∨ ¬v278)
    (c370 : v278 ∨ v242 ∨ ¬v206 ∨ v207)
    (c371 : ¬v242 ∨ v207 ∨ ¬v206 ∨ ¬v278)
    (c372 : v278 ∨ v242 ∨ ¬v207 ∨ ¬v206)
    (c373 : ¬v206 ∨ v242 ∨ ¬v207 ∨ ¬v278)
    (c374 : ¬v206 ∨ v278 ∨ ¬v242 ∨ ¬v207)
    (c375 : ¬v242 ∨ ¬v278 ∨ ¬v207 ∨ ¬v206)
    (c376 : v208 ∨ v244 ∨ v207 ∨ v280)
    (c377 : v208 ∨ v207 ∨ ¬v280 ∨ v244)
    (c378 : ¬v244 ∨ v280 ∨ v207 ∨ v208)
    (c379 : v208 ∨ ¬v244 ∨ ¬v280 ∨ v207)
    (c380 : v280 ∨ v244 ∨ v207 ∨ ¬v208)
    (c381 : ¬v244 ∨ ¬v208 ∨ ¬v280 ∨ v207)
    (c382 : v208 ∨ v244 ∨ ¬v207 ∨ v280)
    (c383 : v244 ∨ ¬v208 ∨ ¬v207 ∨ v280)
    (c384 : v244 ∨ ¬v208 ∨ ¬v207 ∨ ¬v280)
    (c385 : ¬v208 ∨ v280 ∨ ¬v207 ∨ ¬v244)
    (c386 : ¬v229 ∨ v208 ∨ ¬v265 ∨ v202)
    (c387 : v202 ∨ v208 ∨ v229 ∨ ¬v265)
    (c388 : ¬v202 ∨ ¬v229 ∨ ¬v265 ∨ v208)
    (c389 : ¬v229 ∨ ¬v208 ∨ ¬v265 ∨ v202)
    (c390 : v202 ∨ v229 ∨ ¬v208 ∨ v265)
    (c391 : ¬v202 ∨ ¬v229 ∨ ¬v208 ∨ v265)
    (c392 : ¬v202 ∨ ¬v208 ∨ v229 ∨ v265)
    (c393 : v260 ∨ ¬v246 ∨ v288 ∨ v247)
    (c394 : ¬v260 ∨ v247 ∨ ¬v246 ∨ ¬v288)
    (c395 : v260 ∨ ¬v247 ∨ ¬v288 ∨ ¬v246)
    (c396 : ¬v260 ∨ ¬v288 ∨ ¬v247 ∨ ¬v246)
    (c397 : v266 ∨ v247 ∨ ¬v294 ∨ v248)
    (c398 : v248 ∨ v247 ∨ ¬v294 ∨ ¬v266)
    (c399 : v266 ∨ ¬v248 ∨ v294 ∨ v247)
    (c400 : ¬v266 ∨ ¬v247 ∨ ¬v294 ∨ v248)
    (c401 : v248 ∨ ¬v271 ∨ ¬v299 ∨ v249)
    (c402 : v248 ∨ v271 ∨ ¬v249 ∨ v299)
    (c403 : ¬v248 ∨ ¬v299 ∨ ¬v271 ∨ v249)
    (c404 : v303 ∨ v275 ∨ v249 ∨ v250)
    (c405 : v250 ∨ ¬v303 ∨ v249 ∨ v275)
    (c406 : v249 ∨ v303 ∨ v250 ∨ ¬v275)
    (c407 : ¬v303 ∨ v250 ∨ v249 ∨ ¬v275)
    (c408 : ¬v250 ∨ v249 ∨ v275 ∨ v303)
    (c409 : ¬v303 ∨ ¬v275 ∨ v249 ∨ ¬v250)
    (c410 : v275 ∨ ¬v249 ∨ v303 ∨ v250)
    (c411 : ¬v249 ∨ ¬v303 ∨ ¬v275 ∨ v250)
    (c412 : ¬v250 ∨ ¬v249 ∨ v275 ∨ v303)
    (c413 : v275 ∨ ¬v250 ∨ ¬v249 ∨ ¬v303)
    (c414 : ¬v249 ∨ ¬v275 ∨ ¬v250 ∨ v303)
    (c415 : ¬v249 ∨ ¬v303 ∨ ¬v275 ∨ ¬v250)
    (c416 : v306 ∨ ¬v278 ∨ v250 ∨ ¬v251)
    (c417 : v251 ∨ v280 ∨ v252 ∨ v308)
    (c418 : v280 ∨ v252 ∨ ¬v308 ∨ v251)
    (c419 : ¬v280 ∨ v308 ∨ v252 ∨ v251)
    (c420 : v251 ∨ v252 ∨ ¬v308 ∨ ¬v280)
    (c421 : v251 ∨ v280 ∨ ¬v252 ∨ v308)
    (c422 : v251 ∨ ¬v280 ∨ ¬v252 ∨ ¬v308)
    (c423 : ¬v251 ∨ ¬v308 ∨ ¬v280 ∨ v252)
    (c424 : ¬v251 ∨ v280 ∨ ¬v252 ∨ v308)
    (c425 : ¬v251 ∨ ¬v308 ∨ ¬v252 ∨ v280)
    (c426 : ¬v280 ∨ v308 ∨ ¬v252 ∨ ¬v251)
    (c427 : ¬v308 ∨ ¬v280 ∨ ¬v252 ∨ ¬v251)
    (c428 : ¬v293 ∨ ¬v246 ∨ ¬v265 ∨ v252)
    (c429 : v246 ∨ ¬v252 ∨ ¬v293 ∨ ¬v265)
    (c430 : v246 ∨ v293 ∨ ¬v252 ∨ v265)
    (c431 : ¬v246 ∨ ¬v293 ∨ ¬v252 ∨ ¬v265)
    (c432 : ¬v293 ∨ ¬v246 ∨ ¬v252 ∨ v265)
    (c433 : v288 ∨ v281 ∨ ¬v282 ∨ v309)
    (c434 : ¬v309 ∨ ¬v288 ∨ ¬v282 ∨ v281)
    (c435 : v288 ∨ ¬v281 ∨ ¬v282 ∨ v309)
    (c436 : v288 ∨ ¬v309 ∨ ¬v282 ∨ ¬v281)
    (c437 : ¬v288 ∨ ¬v281 ∨ ¬v282 ∨ v309)
    (c438 : ¬v288 ∨ ¬v309 ∨ ¬v282 ∨ ¬v281)
    (c439 : v283 ∨ v282 ∨ v294 ∨ v315)
    (c440 : v283 ∨ ¬v315 ∨ v294 ∨ v282)
    (c441 : v283 ∨ ¬v294 ∨ v315 ∨ v282)
    (c442 : ¬v294 ∨ ¬v315 ∨ v282 ∨ v283)
    (c443 : ¬v283 ∨ v282 ∨ v294 ∨ v315)
    (c444 : ¬v283 ∨ ¬v315 ∨ v282 ∨ ¬v294)
    (c445 : v283 ∨ v294 ∨ ¬v282 ∨ v315)
    (c446 : v283 ∨ ¬v315 ∨ ¬v294 ∨ ¬v282)
    (c447 : v294 ∨ ¬v282 ∨ ¬v283 ∨ v315)
    (c448 : ¬v315 ∨ ¬v282 ∨ ¬v283 ∨ v294)
    (c449 : v315 ∨ ¬v294 ∨ ¬v283 ∨ ¬v282)
    (c450 : ¬v315 ∨ ¬v294 ∨ ¬v283 ∨ ¬v282)
    (c451 : v299 ∨ v283 ∨ v284 ∨ v320)
    (c452 : v299 ∨ ¬v320 ∨ v283 ∨ v284)
    (c453 : ¬v299 ∨ v283 ∨ v284 ∨ v320)
    (c454 : ¬v299 ∨ ¬v320 ∨ v283 ∨ v284)
    (c455 : v299 ∨ v283 ∨ ¬v284 ∨ v320)
    (c456 : ¬v320 ∨ v283 ∨ ¬v299 ∨ ¬v284)
    (c457 : v299 ∨ v284 ∨ v320 ∨ ¬v283)
    (c458 : ¬v283 ∨ ¬v299 ∨ v284 ∨ ¬v320)
    (c459 : v299 ∨ ¬v283 ∨ ¬v284 ∨ v320)
    (c460 : v299 ∨ ¬v320 ∨ ¬v284 ∨ ¬v283)
    (c461 : ¬v299 ∨ ¬v284 ∨ ¬v283 ∨ v320)
    (c462 : ¬v320 ∨ ¬v283 ∨ ¬v284 ∨ ¬v299)
    (c463 : v303 ∨ v285 ∨ v284 ∨ v324)
    (c464 : v303 ∨ ¬v324 ∨ v285 ∨ v284)
    (c465 : ¬v303 ∨ v324 ∨ v284 ∨ v285)
    (c466 : ¬v303 ∨ ¬v324 ∨ v284 ∨ v285)
    (c467 : v303 ∨ v324 ∨ ¬v285 ∨ v284)
    (c468 : ¬v303 ∨ ¬v285 ∨ v284 ∨ ¬v324)
    (c469 : v324 ∨ v303 ∨ ¬v284 ∨ v285)
    (c470 : ¬v303 ∨ ¬v324 ∨ v285 ∨ ¬v284)
    (c471 : v303 ∨ v324 ∨ ¬v285 ∨ ¬v284)
    (c472 : v303 ∨ ¬v324 ∨ ¬v284 ∨ ¬v285)
    (c473 : ¬v303 ∨ ¬v285 ∨ ¬v284 ∨ v324)
    (c474 : ¬v303 ∨ ¬v324 ∨ ¬v285 ∨ ¬v284)
    (c475 : v306 ∨ v286 ∨ v327 ∨ v285)
    (c476 : v306 ∨ ¬v327 ∨ v286 ∨ v285)
    (c477 : ¬v306 ∨ v285 ∨ v286 ∨ v327)
    (c478 : ¬v306 ∨ ¬v327 ∨ v285 ∨ v286)
    (c479 : v306 ∨ v327 ∨ v285 ∨ ¬v286)
    (c480 : ¬v306 ∨ ¬v286 ∨ ¬v327 ∨ v285)
    (c481 : v306 ∨ v286 ∨ v327 ∨ ¬v285)
    (c482 : v286 ∨ ¬v285 ∨ ¬v327 ∨ ¬v306)
    (c483 : v306 ∨ v327 ∨ ¬v285 ∨ ¬v286)
    (c484 : v306 ∨ ¬v327 ∨ ¬v285 ∨ ¬v286)
    (c485 : ¬v286 ∨ v327 ∨ ¬v285 ∨ ¬v306)
    (c486 : ¬v306 ∨ ¬v285 ∨ ¬v286 ∨ ¬v327)
    (c487 : ¬v293 ∨ ¬v314 ∨ v281 ∨ v287)
    (c488 : ¬v293 ∨ v314 ∨ v287 ∨ v281)
    (c489 : v281 ∨ ¬v314 ∨ v287 ∨ v293)
    (c490 : v314 ∨ v293 ∨ v287 ∨ v281)
    (c491 : ¬v281 ∨ v287 ∨ v293 ∨ v314)
    (c492 : ¬v314 ∨ ¬v287 ∨ ¬v293 ∨ v281)
    (c493 : v293 ∨ ¬v287 ∨ v281 ∨ v314)
    (c494 : ¬v314 ∨ ¬v287 ∨ ¬v281 ∨ v293)
    (c495 : ¬v281 ∨ ¬v287 ∨ v293 ∨ v314)
    (c496 : v155 ∨ ¬v145 ∨ ¬v200 ∨ v146)
    (c497 : v147 ∨ v164 ∨ ¬v209 ∨ ¬v146)
    (c498 : ¬v201 ∨ ¬v209 ∨ v200 ∨ v245)
    (c499 : v201 ∨ v209 ∨ ¬v245 ∨ ¬v200)
    (c500 : v335 ∨ ¬v345 ∨ ¬v330 ∨ v331)
    (c501 : v345 ∨ ¬v335 ∨ ¬v330 ∨ v331)
    (c502 : ¬v331 ∨ v339 ∨ v332 ∨ ¬v349)
    (c503 : ¬v339 ∨ ¬v331 ∨ v332 ∨ v349)
    (c504 : ¬v332 ∨ v333 ∨ v342 ∨ ¬v352)
    (c505 : v345 ∨ v355 ∨ ¬v346 ∨ ¬v349)
    (c506 : v346 ∨ v358 ∨ ¬v347 ∨ ¬v352)
    (c507 : v356 ∨ ¬v355 ∨ ¬v361 ∨ v358)
    (c508 : ¬v357 ∨ v338 ∨ ¬v341 ∨ v335)
    (c509 : ¬v363 ∨ v361 ∨ ¬v362 ∨ v364)
    (c510 : v363 ∨ v362 ∨ ¬v361 ∨ ¬v364)
    (c511 : v341 ∨ ¬v362 ∨ ¬v343 ∨ v339)
    (c512 : ¬v342 ∨ v344 ∨ ¬v343 ∨ v364)
    (c513 : v343 ∨ v342 ∨ ¬v364 ∨ ¬v344)
    : False := by
  have c514 : v287 ∨ v293 ∨ v314 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v281 := by
      rcases c491 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c490 with a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c515 : ¬v287 ∨ v293 ∨ v314 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v281 := by
      rcases c493 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c495 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c516 : v293 ∨ v314 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v287 := by
      rcases c514 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c515 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c517 : v282 ∨ v294 ∨ v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v283 := by
      rcases c439 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c443 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c518 : ¬v284 ∨ ¬v283 ∨ v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c461 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c459 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c519 : ¬v294 ∨ ¬v282 ∨ v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v283 := by
      rcases c449 with a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c318 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c520 : v294 ∨ ¬v282 ∨ v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v283 := by
      rcases c447 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    rcases c445 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
  have c521 : ¬v282 ∨ v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v294 := by
      rcases c520 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c519 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
  have c522 : v282 ∨ ¬v294 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v283 := by
      rcases c444 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c442 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
  have c523 : ¬v282 ∨ ¬v294 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v283 := by
      rcases c450 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c446 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c524 : ¬v294 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v282 := by
      rcases c522 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c523 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c525 : v282 ∨ v294 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v283 := by
      rcases c319 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c440 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c526 : v284 ∨ ¬v283 ∨ v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c320 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c457 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd n1 a
  have c527 : ¬v283 ∨ v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := by
      rcases c518 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c526 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c528 : v315 ∨ v282 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v294 := by
      rcases c517 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c441 with a|a|a|a
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c529 : v315 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v282 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a n0
    rcases c528 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
  have c530 : v284 ∨ v283 ∨ v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c453 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c451 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c531 : ¬v285 ∨ ¬v284 ∨ v324 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c471 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd n1 a
  have c532 : v281 ∨ v287 ∨ ¬v314 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c487 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c489 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c533 : v285 ∨ v284 ∨ ¬v324 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c466 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c464 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c534 : v285 ∨ v286 ∨ v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c477 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c475 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c535 : v286 ∨ v285 ∨ ¬v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c476 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c478 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c536 : ¬v286 ∨ v285 ∨ ¬v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c480 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c324 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd n0 a
  have c537 : ¬v327 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v286 := by
      rcases c536 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c535 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c538 : ¬v281 ∨ ¬v282 ∨ v309 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c437 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c435 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c539 : v314 ∨ v281 ∨ v287 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c516 with a|a
      · exact a
      · exact absurd a n0
    rcases c488 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
  have c540 : v281 ∨ v287 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v314 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c532 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
  have c541 : ¬v309 ∨ ¬v281 ∨ ¬v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c438 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c436 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c542 : ¬v281 ∨ ¬v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v309 := by
      rcases c541 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c538 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c543 : ¬v284 ∨ ¬v285 ∨ ¬v324 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v303 := by
      rcases c472 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c474 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c544 : v284 ∨ ¬v285 ∨ ¬v324 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v303 := by
      rcases c322 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    rcases c468 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
  have c545 : ¬v324 ∨ ¬v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v284 := by
      rcases c544 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c543 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c546 : v284 ∨ v283 ∨ ¬v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c454 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c452 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c547 : v284 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v320 := by
      rcases c546 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c530 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c548 : ¬v285 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd n0 a
    rcases c531 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c549 : v250 ∨ ¬v275 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v249 := by
      rcases c308 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c406 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n1 a
  have c550 : ¬v252 ∨ ¬v265 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v246 := by
      rcases c429 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c431 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c551 : ¬v249 ∨ v275 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v250 := by
      rcases c410 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
    rcases c412 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c552 : v249 ∨ ¬v271 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v248 := by
      rcases c401 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c403 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c553 : v252 ∨ ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c420 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c423 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c554 : v249 ∨ v275 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v250 := by
      rcases c404 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    rcases c408 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c555 : v275 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v249 := by
      rcases c551 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c554 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c556 : v324 ∨ ¬v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
    rcases c469 with a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
  have c557 : v288 ∨ v281 ∨ ¬v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v309 := by
      rcases c316 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
    rcases c433 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
  have c558 : ¬v247 ∨ ¬v246 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c395 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c396 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c559 : v252 ∨ v251 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v280 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    rcases c417 with a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c560 : ¬v252 ∨ ¬v246 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v265 := by
      rcases c550 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c432 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c561 : ¬v308 ∨ ¬v250 ∨ v251 ∨ ¬v306 ∨ ¬v307 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v252 := by
      rcases c198 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a n2
    have u2 : ¬v280 := by
      rcases c420 with a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
    rcases c418 with a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
  have c562 : v251 ∨ ¬v250 ∨ v252 ∨ ¬v306 ∨ ¬v307 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v308 := by
      rcases c559 with a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    rcases c561 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd n4 a
  have c563 : ¬v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c375 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c564 : v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c371 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
    rcases c367 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd n2 a
  have c565 : ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v207 := by
      rcases c564 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c563 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c566 : v229 ∨ ¬v208 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v202 := by
      rcases c390 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c392 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c567 : v293 ∨ v281 ∨ ¬v287 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v314 := by
      rcases c516 with a|a
      · exact absurd a n0
      · exact a
    rcases c317 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c568 : v208 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c382 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c376 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c569 : ¬v208 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v207 := by
      rcases c380 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
    rcases c383 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
  have c570 : v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v208 := by
      rcases c568 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c569 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c571 : v208 ∨ ¬v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v207 := by
      rcases c378 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    rcases c298 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n2
  have c572 : ¬v349 ∨ v202 ∨ ¬v206 ∨ v214 ∨ ¬v227 ∨ v247 ∨ ¬v248 ∨ v260 ∨ v263 ∨ ¬v266 ∨ ¬v268 ∨ v296 ∨ v303 ∨ ¬v330 ∨ v332 ∨ ¬v346 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a n12
    have u2 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
    have u3 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n12
    have u4 : ¬v339 := by
      rcases c220 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd n10 a
      · exact absurd a n8
      · exact absurd a n14
    have u5 : ¬v239 := by
      rcases c103 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd n4 a
    have u6 : v205 := by
      rcases c294 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd n2 a
    have u7 : v200 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd u1 a
    have u8 : ¬v331 := by
      rcases c502 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd n0 a
    have u9 : ¬v262 := by
      rcases c219 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n8
    have u10 : v246 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n1
    have u11 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd u7 a
    have u12 : v224 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n7
      · exact absurd a n1
    have u13 : v226 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u9
    have u14 : ¬v232 := by
      rcases c157 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a u4
    have u15 : v345 := by
      rcases c273 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd n15 a
    have u16 : v335 := by
      rcases c500 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n13 a
      · exact absurd a u8
    have u17 : v336 := by
      rcases c271 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u8
    have u18 : v261 := by
      rcases c218 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n7
      · exact absurd n13 a
      · exact absurd a n8
      · exact absurd a n14
    have u19 : ¬v204 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u10 a
      · exact absurd n6 a
      · exact absurd u7 a
      · exact absurd a n1
    have u20 : v288 := by
      rcases c393 with a|a|a|a
      · exact absurd a n7
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
    have u21 : v291 := by
      rcases c139 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd n4 a
      · exact absurd a u14
      · exact absurd a n14
    have u22 : ¬v289 := by
      rcases c259 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u21 a
      · exact absurd n13 a
      · exact absurd u20 a
      · exact absurd a n14
    have u23 : v290 := by
      rcases c260 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u20 a
      · exact absurd u21 a
      · exact absurd a n14
      · exact absurd a u4
    have u24 : v299 := by
      rcases c326 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u23 a
      · exact absurd u16 a
    have u25 : ¬v271 := by
      rcases c552 with a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u24 a
    have u26 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u6 a
      · exact absurd a u19
    rcases c100 with a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd u13 a
    · exact absurd u16 a
    · exact absurd a u9
    · exact absurd u6 a
  have c573 : v339 ∨ ¬v200 ∨ v202 ∨ ¬v246 ∨ ¬v248 ∨ v249 ∨ v263 ∨ ¬v288 ∨ ¬v291 ∨ ¬v330 ∨ v331 ∨ v332 ∨ ¬v335 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v290 := by
      rcases c260 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd n7 a
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n7 a
    have u3 : v336 := by
      rcases c271 with a|a|a|a|a|a
      · exact a
      · exact absurd n12 a
      · exact absurd n9 a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd n7 a
    have u5 : ¬v289 := by
      rcases c259 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n8 a
      · exact absurd n9 a
      · exact absurd n7 a
      · exact absurd a n11
    have u6 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n1 a
    have u7 : ¬v262 := by
      rcases c219 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n6
    have u8 : v261 := by
      rcases c218 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd n9 a
      · exact absurd a n6
      · exact absurd a n11
    have u9 : v299 := by
      rcases c326 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd n12 a
    have u10 : v224 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n2
    have u11 : v226 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
    have u12 : v205 := by
      rcases c71 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n1 a
    have u13 : ¬v204 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a n2
    have u14 : ¬v271 := by
      rcases c552 with a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u9 a
    have u15 : v235 := by
      rcases c100 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u11 a
      · exact absurd n12 a
      · exact absurd a u7
      · exact absurd u12 a
    rcases c361 with a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a u13
  have c574 : ¬v204 ∨ ¬v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v230 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c360 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c575 : ¬v241 ∨ v204 ∨ ¬v205 ∨ ¬v206 ∨ ¬v229 ∨ v230 ∨ ¬v243 ∨ v265 ∨ v272 ∨ v279 ∨ ¬v315 ∨ ¬v330 ∨ v331 ∨ v335 ∨ ¬v339 ∨ ¬v341 ∨ ¬v343 ∨ ¬v347 ∨ v349 ∨ ¬v352 ∨ v358 ∨ ¬v361 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v345 := by
      rcases c500 with a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd n11 a
      · exact absurd a n12
    have u2 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : v346 := by
      rcases c506 with a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd n17 a
      · exact absurd n19 a
    have u4 : ¬v355 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n18
    have u5 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n10 a
    have u6 : ¬v356 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n21 a
      · exact absurd a n20
    have u7 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n10 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u2
    have u8 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u7
    have u9 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u9
    have u11 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd u8 a
    have u12 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u11
    have u13 : ¬v271 := by
      rcases c315 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u12 a
      · exact absurd a n8
    have u14 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a n1
    have u15 : ¬v225 := by
      rcases c154 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd n11 a
      · exact absurd a n13
      · exact absurd a u1
    have u16 : v208 := by
      rcases c297 with a|a|a|a
      · exact absurd n6 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n9
    have u17 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u16 a
      · exact absurd a n7
    have u18 : v226 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd n4 a
    have u19 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd u16 a
      · exact absurd n3 a
      · exact absurd a n7
    have u20 : ¬v338 := by
      rcases c159 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u18 a
      · exact absurd n15 a
      · exact absurd a n13
      · exact absurd a u15
    have u21 : ¬v362 := by
      rcases c224 with a|a|a|a|a|a
      · exact a
      · exact absurd n16 a
      · exact absurd a u19
      · exact absurd n14 a
      · exact absurd u12 a
      · exact absurd a n9
    have u22 : ¬v357 := by
      rcases c508 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd n15 a
      · exact absurd a n13
    have u23 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n21 a
      · exact absurd n22 a
    rcases c284 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd n21 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u21
  have c576 : v204 ∨ v230 ∨ ¬v236 ∨ v247 ∨ v252 ∨ ¬v255 ∨ v265 ∨ ¬v268 ∨ ¬v278 ∨ ¬v307 ∨ ¬v315 ∨ ¬v330 ∨ v331 ∨ v332 ∨ ¬v339 ∨ ¬v343 ∨ ¬v347 ∨ v349 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n10 a
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n10 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
    have u6 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u7 : ¬v309 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a u4
    have u8 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    have u9 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u8 a
    have u10 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u5
    have u11 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
    have u13 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u11
    have u14 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd u10 a
    have u15 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
    have u16 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u14
    have u17 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u14
    have u18 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u15 a
    have u19 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd n8 a
      · exact absurd u18 a
      · exact absurd u16 a
    have u20 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n18 a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd n9 a
      · exact absurd a u13
    have u21 : ¬v257 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd u17 a
      · exact absurd a u13
    have u22 : v251 := by
      rcases c562 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd n9 a
      · exact absurd n18 a
    have u23 : v308 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n9 a
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd u17 a
    have u24 : v344 := by
      rcases c266 with a|a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd u23 a
      · exact absurd n18 a
      · exact absurd n9 a
      · exact absurd u9 a
    have u25 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u23 a
    have u26 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd n9 a
      · exact absurd n18 a
      · exact absurd a n4
      · exact absurd u23 a
    have u27 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u23 a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd u15 a
    have u28 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u23 a
      · exact absurd a n4
      · exact absurd u15 a
      · exact absurd u22 a
    have u29 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u25
    have u30 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u25
    have u31 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u30 a
      · exact absurd a u25
      · exact a
      · exact absurd u29 a
    have u32 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u22 a
      · exact absurd u9 a
      · exact absurd u23 a
      · exact absurd a n4
    have u33 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
    have u34 : ¬v297 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd u15 a
      · exact absurd u22 a
    have u35 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a n6
    have u36 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u30 a
      · exact absurd a n6
    have u37 : v243 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u30 a
      · exact absurd n15 a
      · exact absurd a u26
      · exact absurd a n6
    have u38 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd n8 a
    have u39 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u32 a
      · exact absurd u6 a
    have u40 : v266 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u1
      · exact absurd a n3
    have u41 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u26
      · exact absurd u30 a
      · exact absurd u38 a
      · exact absurd a n6
    have u42 : ¬v214 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd n18 a
      · exact absurd n9 a
      · exact absurd u18 a
      · exact absurd a u2
    have u43 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u38 a
      · exact absurd u17 a
      · exact absurd n8 a
      · exact absurd a u31
    have u44 : v291 := by
      rcases c185 with a|a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a u41
      · exact absurd u32 a
      · exact absurd u9 a
      · exact absurd a n6
    have u45 : ¬v312 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n15 a
      · exact absurd a u41
      · exact absurd a u26
      · exact absurd a u20
    have u46 : ¬v209 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u17 a
      · exact absurd a u42
      · exact absurd u43 a
      · exact absurd a u11
    have u47 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u32 a
      · exact absurd a n3
      · exact absurd a u36
      · exact absurd u43 a
    have u48 : ¬v296 := by
      rcases c263 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u18 a
      · exact absurd u27 a
      · exact absurd u6 a
      · exact absurd a u34
    have u49 : v317 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u7
    have u50 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u28 a
      · exact absurd u43 a
    have u51 : ¬v272 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u38 a
      · exact absurd u47 a
      · exact absurd u40 a
      · exact absurd n7 a
    have u52 : v352 := by
      rcases c210 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd n8 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd n7 a
    have u53 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd u22 a
      · exact absurd u28 a
      · exact absurd a u31
      · exact absurd u43 a
    have u54 : ¬v254 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd u38 a
      · exact absurd u47 a
      · exact absurd n7 a
      · exact absurd a u21
    have u55 : ¬v318 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd u49 a
      · exact absurd a u54
      · exact absurd a u21
      · exact absurd a u13
    have u56 : ¬v321 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd n10 a
      · exact absurd n5 a
      · exact absurd u49 a
      · exact absurd a u21
    have u57 : v322 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd n10 a
      · exact absurd a u54
      · exact absurd n5 a
      · exact absurd u53 a
    have u58 : ¬v358 := by
      rcases c212 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd n8 a
      · exact absurd a u21
      · exact absurd a u51
      · exact absurd a u13
    have u59 : v346 := by
      rcases c506 with a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd n16 a
      · exact absurd u52 a
    have u60 : v300 := by
      rcases c267 with a|a|a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd u59 a
      · exact absurd a u48
      · exact absurd u18 a
      · exact absurd a u58
    have u61 : ¬v362 := by
      rcases c224 with a|a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a u41
      · exact absurd n14 a
      · exact absurd u16 a
      · exact absurd a u26
    have u62 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u61
      · exact absurd u19 a
      · exact absurd n18 a
    have u63 : v341 := by
      rcases c283 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd n18 a
      · exact absurd n15 a
      · exact absurd u24 a
      · exact absurd a u61
    have u64 : v241 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd n18 a
      · exact absurd u29 a
      · exact absurd u37 a
      · exact absurd a u61
    have u65 : ¬v277 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd n18 a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u61
    have u66 : v205 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a u65
      · exact absurd u16 a
      · exact absurd u30 a
      · exact absurd u38 a
      · exact absurd a u26
    have u67 : v335 := by
      rcases c575 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u64 a
      · exact absurd a n0
      · exact absurd u66 a
      · exact absurd u38 a
      · exact absurd u35 a
      · exact absurd a n1
      · exact absurd u37 a
      · exact absurd a n6
      · exact absurd a u51
      · exact absurd a u26
      · exact absurd n10 a
      · exact absurd n11 a
      · exact absurd a n12
      · exact a
      · exact absurd n14 a
      · exact absurd u63 a
      · exact absurd n15 a
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd u52 a
      · exact absurd a u58
      · exact absurd u19 a
      · exact absurd n18 a
    have u68 : v345 := by
      rcases c501 with a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd n11 a
      · exact absurd a n12
    have u69 : v355 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd n14 a
      · exact absurd u68 a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd u67 a
    have u70 : v299 := by
      rcases c327 with a|a|a|a
      · exact a
      · exact absurd u69 a
      · exact absurd u60 a
      · exact absurd a u14
    have u71 : v356 := by
      rcases c507 with a|a|a|a
      · exact a
      · exact absurd u69 a
      · exact absurd u19 a
      · exact absurd a u58
    have u72 : ¬v320 := by
      rcases c456 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u70 a
      · exact absurd u10 a
    rcases c269 with a|a|a|a|a|a
    · exact absurd u71 a
    · exact absurd u57 a
    · exact absurd a u72
    · exact absurd u69 a
    · exact absurd a u56
    · exact absurd a u58
  have c577 : v362 ∨ v225 ∨ ¬v226 ∨ ¬v229 ∨ v335 ∨ ¬v343 ∨ ¬v344 ∨ v355 ∨ v356 ∨ ¬v361 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n9 a
      · exact absurd n10 a
    have u2 : v357 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n9 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v341 := by
      rcases c283 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n10 a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n0
    have u4 : v338 := by
      rcases c508 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
    rcases c159 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n3 a
    · exact absurd n2 a
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n1
  have c578 : ¬v343 ∨ ¬v246 ∨ v252 ∨ ¬v278 ∨ ¬v307 ∨ ¬v315 ∨ ¬v330 ∨ v331 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n5 a
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n5 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
    have u6 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u7 : ¬v309 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a u4
    have u8 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    have u9 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u8 a
    have u10 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u5
    have u11 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u12 : ¬v265 := by
      rcases c428 with a|a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u13 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
    have u15 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd u6 a
    have u16 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u13
    have u17 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd u10 a
    have u18 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
    have u19 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u17
    have u20 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact absurd a u17
    have u22 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd u18 a
    have u23 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd n3 a
      · exact absurd u22 a
      · exact absurd u19 a
    have u24 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd u22 a
      · exact absurd a u13
      · exact absurd n4 a
      · exact absurd a u16
    have u25 : ¬v257 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd u22 a
      · exact absurd u20 a
      · exact absurd a u16
    have u26 : v251 := by
      rcases c562 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd n4 a
      · exact absurd n8 a
    have u27 : v308 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n4 a
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd u20 a
    have u28 : v344 := by
      rcases c266 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u27 a
      · exact absurd n8 a
      · exact absurd n4 a
      · exact absurd u9 a
    have u29 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u27 a
    have u30 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd n4 a
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd u27 a
    have u31 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u27 a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd u18 a
    have u32 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u27 a
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd u26 a
    have u33 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u29
    have u34 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u29
    have u35 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u34 a
      · exact absurd a u29
      · exact a
      · exact absurd u33 a
    have u36 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u1
    have u37 : ¬v297 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd u26 a
    have u38 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u12
    have u39 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u34 a
      · exact absurd a u12
    have u40 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u2
      · exact absurd n3 a
    have u41 : v266 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd a u1
      · exact absurd a u11
    have u42 : v243 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u34 a
      · exact absurd n0 a
      · exact absurd a u30
      · exact absurd a u12
    have u43 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u30
      · exact absurd u34 a
      · exact absurd u40 a
      · exact absurd a u12
    have u44 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u40 a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact absurd a u35
    have u45 : ¬v214 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd n8 a
      · exact absurd n4 a
      · exact absurd u22 a
      · exact absurd a u2
    have u46 : v227 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd n0 a
      · exact absurd a u39
      · exact absurd u38 a
      · exact absurd a u12
    have u47 : ¬v342 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u43
      · exact absurd n3 a
      · exact absurd n8 a
      · exact absurd a u30
    have u48 : v291 := by
      rcases c185 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u43
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd a u12
    have u49 : v268 := by
      rcases c182 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u20 a
      · exact absurd n1 a
      · exact absurd a u43
      · exact absurd a u15
    have u50 : ¬v312 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd n0 a
      · exact absurd a u43
      · exact absurd a u30
      · exact absurd a u24
    have u51 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u39
      · exact absurd u44 a
    have u52 : ¬v209 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u20 a
      · exact absurd a u45
      · exact absurd u44 a
      · exact absurd a u13
    have u53 : ¬v296 := by
      rcases c263 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u22 a
      · exact absurd u31 a
      · exact absurd u6 a
      · exact absurd a u37
    have u54 : v317 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u7
    have u55 : v224 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd a u15
      · exact absurd a u39
    have u56 : ¬v204 := by
      rcases c574 with a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u41 a
    have u57 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u32 a
      · exact absurd u44 a
    have u58 : v352 := by
      rcases c210 with a|a|a|a|a|a
      · exact a
      · exact absurd u54 a
      · exact absurd n3 a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd u49 a
    have u59 : ¬v272 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u40 a
      · exact absurd u51 a
      · exact absurd u41 a
      · exact absurd u49 a
    have u60 : ¬v230 := by
      rcases c358 with a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u41 a
      · exact absurd u51 a
    have u61 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u26 a
      · exact absurd u32 a
      · exact absurd a u35
      · exact absurd u44 a
    have u62 : ¬v254 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u40 a
      · exact absurd u51 a
      · exact absurd u49 a
      · exact absurd a u25
    have u63 : v255 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u32 a
      · exact absurd u44 a
      · exact absurd u36 a
      · exact absurd a u56
    have u64 : ¬v318 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u54 a
      · exact absurd a u62
      · exact absurd a u25
      · exact absurd a u16
    have u65 : ¬v219 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd n5 a
      · exact absurd u63 a
      · exact absurd a u56
      · exact absurd a u60
    have u66 : ¬v321 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u62
      · exact absurd n5 a
      · exact absurd u63 a
      · exact absurd u54 a
      · exact absurd a u25
    have u67 : v347 := by
      rcases c249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd u3 a
      · exact absurd a u37
    have u68 : ¬v333 := by
      rcases c236 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u64
    have u69 : ¬v358 := by
      rcases c212 with a|a|a|a|a|a
      · exact a
      · exact absurd a u66
      · exact absurd n3 a
      · exact absurd a u25
      · exact absurd a u59
      · exact absurd a u16
    have u70 : v346 := by
      rcases c506 with a|a|a|a
      · exact a
      · exact absurd a u69
      · exact absurd u67 a
      · exact absurd u58 a
    have u71 : ¬v332 := by
      rcases c504 with a|a|a|a
      · exact a
      · exact absurd a u68
      · exact absurd a u47
      · exact absurd u58 a
    have u72 : v236 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd u70 a
      · exact absurd n5 a
      · exact absurd a u60
      · exact absurd a u65
      · exact absurd a u66
    have u73 : ¬v349 := by
      rcases c572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u40 a
      · exact absurd a u45
      · exact absurd u46 a
      · exact absurd a u11
      · exact absurd u36 a
      · exact absurd a u15
      · exact absurd a u43
      · exact absurd u41 a
      · exact absurd u49 a
      · exact absurd a u53
      · exact absurd a u17
      · exact absurd n6 a
      · exact absurd a u71
      · exact absurd u70 a
    have u74 : ¬v339 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u56
      · exact absurd a u60
      · exact absurd u72 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u63 a
      · exact absurd a u12
      · exact absurd u49 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u71
      · exact a
      · exact absurd n0 a
      · exact absurd u67 a
      · exact absurd a u73
      · exact absurd n8 a
    have u75 : ¬v335 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u74
      · exact absurd u44 a
      · exact absurd a u39
      · exact absurd n1 a
      · exact absurd u36 a
      · exact absurd a u21
      · exact absurd a u43
      · exact absurd u6 a
      · exact absurd u48 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u71
      · exact a
    have u76 : ¬v262 := by
      rcases c219 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u74
      · exact absurd a u71
      · exact absurd a u43
    have u77 : ¬v239 := by
      rcases c103 with a|a|a|a|a|a
      · exact a
      · exact absurd a u74
      · exact absurd u19 a
      · exact absurd u40 a
      · exact absurd a u43
      · exact absurd u46 a
    have u78 : v205 := by
      rcases c294 with a|a|a|a
      · exact a
      · exact absurd a u77
      · exact absurd u19 a
      · exact absurd u40 a
    have u79 : ¬v345 := by
      rcases c500 with a|a|a|a
      · exact absurd a u75
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u80 : ¬v355 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u70 a
      · exact absurd a u73
    have u81 : ¬v356 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd a u80
      · exact absurd u23 a
      · exact absurd a u69
    have u82 : ¬v271 := by
      rcases c315 with a|a|a|a
      · exact absurd a u80
      · exact a
      · exact absurd u19 a
      · exact absurd a u59
    have u83 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u82
      · exact absurd u78 a
      · exact absurd a u56
    have u84 : ¬v225 := by
      rcases c154 with a|a|a|a|a|a
      · exact a
      · exact absurd a u83
      · exact absurd a u60
      · exact absurd n6 a
      · exact absurd a u75
      · exact absurd a u79
    have u85 : v226 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u55 a
      · exact absurd a u15
      · exact absurd a u39
      · exact absurd a u76
    have u86 : v362 := by
      rcases c577 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u84
      · exact absurd u85 a
      · exact absurd u38 a
      · exact absurd a u75
      · exact absurd n0 a
      · exact absurd u28 a
      · exact absurd a u80
      · exact absurd a u81
      · exact absurd u23 a
      · exact absurd n8 a
    have u87 : v341 := by
      rcases c511 with a|a|a|a
      · exact a
      · exact absurd u86 a
      · exact absurd n0 a
      · exact absurd a u74
    have u88 : v357 := by
      rcases c281 with a|a|a|a|a|a
      · exact a
      · exact absurd u87 a
      · exact absurd a u74
      · exact absurd a u75
      · exact absurd a u80
      · exact absurd u86 a
    have u89 : v338 := by
      rcases c508 with a|a|a|a
      · exact absurd u88 a
      · exact a
      · exact absurd u87 a
      · exact absurd a u75
    rcases c159 with a|a|a|a|a|a
    · exact absurd u89 a
    · exact absurd u38 a
    · exact absurd u85 a
    · exact absurd u87 a
    · exact absurd a u75
    · exact absurd a u84
  have c579 : ¬v362 ∨ ¬v224 ∨ v225 ∨ ¬v229 ∨ ¬v288 ∨ ¬v290 ∨ ¬v293 ∨ ¬v330 ∨ ¬v331 ∨ v335 ∨ v339 ∨ ¬v343 ∨ v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v341 := by
      rcases c511 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n11 a
      · exact absurd a n10
    have u2 : v357 := by
      rcases c281 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd n0 a
    have u3 : v338 := by
      rcases c508 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
    have u4 : v334 := by
      rcases c262 with a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd n6 a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact absurd n5 a
    rcases c155 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n7 a
    · exact absurd n3 a
    · exact absurd n1 a
    · exact absurd a n2
  have c580 : v335 ∨ v202 ∨ ¬v205 ∨ ¬v208 ∨ ¬v224 ∨ ¬v229 ∨ v230 ∨ v235 ∨ v239 ∨ v262 ∨ v271 ∨ ¬v288 ∨ ¬v293 ∨ ¬v299 ∨ v303 ∨ ¬v307 ∨ ¬v308 ∨ ¬v330 ∨ ¬v331 ∨ v339 ∨ ¬v343 ∨ v345 ∨ v355 ∨ v356 ∨ ¬v361 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v344 := by
      rcases c266 with a|a|a|a|a|a
      · exact a
      · exact absurd n20 a
      · exact absurd n16 a
      · exact absurd n25 a
      · exact absurd n15 a
      · exact absurd n12 a
    have u2 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a n14
    have u3 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n14
    have u4 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a n14
    have u5 : ¬v225 := by
      rcases c154 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd n17 a
      · exact absurd a n0
      · exact absurd a n21
    have u6 : ¬v265 := by
      rcases c389 with a|a|a|a
      · exact absurd n5 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
    have u7 : v206 := by
      rcases c363 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact absurd a n8
    have u8 : v200 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd u7 a
      · exact absurd u2 a
    have u9 : v290 := by
      rcases c183 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd n13 a
    have u10 : v246 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd n2 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a n1
    have u11 : ¬v252 := by
      rcases c560 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n12 a
    have u12 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd n16 a
    have u13 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n15 a
      · exact absurd n25 a
      · exact absurd a u11
      · exact absurd n16 a
    have u14 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u12
    have u15 : v243 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
      · exact absurd n20 a
      · exact absurd a u13
      · exact absurd a u6
    have u16 : ¬v362 := by
      rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd n5 a
      · exact absurd n11 a
      · exact absurd u9 a
      · exact absurd n12 a
      · exact absurd n17 a
      · exact absurd n18 a
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd n20 a
      · exact absurd a n22
    have u17 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n24 a
      · exact absurd n25 a
    have u18 : v241 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n25 a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact absurd a u16
    have u19 : v226 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd n5 a
    rcases c577 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd u19 a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd n20 a
    · exact absurd u1 a
    · exact absurd a n22
    · exact absurd a n23
    · exact absurd n24 a
    · exact absurd n25 a
  have c581 : ¬v364 ∨ ¬v246 ∨ v252 ∨ ¬v278 ∨ ¬v307 ∨ ¬v315 ∨ ¬v330 ∨ ¬v343 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n5 a
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n5 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
    have u6 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u7 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    have u8 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u9 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v309 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a u4
    have u11 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u12 : ¬v265 := by
      rcases c428 with a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u13 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u13
    have u15 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd u6 a
    have u16 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u13
    have u17 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd u9 a
    have u18 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
    have u19 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u17
    have u20 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd u18 a
    have u22 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd n3 a
      · exact absurd u21 a
      · exact absurd u19 a
    have u23 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd n4 a
      · exact absurd a u16
    have u24 : ¬v257 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd u21 a
      · exact absurd u20 a
      · exact absurd a u16
    have u25 : v251 := by
      rcases c562 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd n4 a
      · exact absurd n0 a
    have u26 : v308 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd n4 a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd u20 a
    have u27 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u26 a
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd u25 a
    have u28 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u26 a
    have u29 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd u18 a
    have u30 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd n4 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd u26 a
    have u31 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u1
    have u32 : ¬v297 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd u25 a
    have u33 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u28
    have u34 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u28
    have u35 : v266 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u1
      · exact absurd a u11
    have u36 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u34 a
      · exact absurd a u28
      · exact a
      · exact absurd u33 a
    have u37 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u12
    have u38 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u2
      · exact absurd n3 a
    have u39 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd u34 a
      · exact absurd a u12
    have u40 : v243 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd u34 a
      · exact absurd n7 a
      · exact absurd a u30
      · exact absurd a u12
    have u41 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u38 a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact absurd a u36
    have u42 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u30
      · exact absurd u34 a
      · exact absurd u38 a
      · exact absurd a u12
    have u43 : ¬v214 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd u21 a
      · exact absurd a u2
    have u44 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u39
      · exact absurd u41 a
    have u45 : v291 := by
      rcases c185 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u42
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u12
    have u46 : v268 := by
      rcases c182 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u20 a
      · exact absurd n1 a
      · exact absurd a u42
      · exact absurd a u15
    have u47 : ¬v312 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd n7 a
      · exact absurd a u42
      · exact absurd a u30
      · exact absurd a u23
    have u48 : ¬v342 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u42
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a u30
    have u49 : v227 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd n7 a
      · exact absurd a u39
      · exact absurd u37 a
      · exact absurd a u12
    have u50 : ¬v209 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u20 a
      · exact absurd a u43
      · exact absurd u41 a
      · exact absurd a u13
    have u51 : ¬v204 := by
      rcases c574 with a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u35 a
    have u52 : ¬v230 := by
      rcases c358 with a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd u35 a
      · exact absurd u44 a
    have u53 : v224 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd a u15
      · exact absurd a u39
    have u54 : ¬v296 := by
      rcases c263 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u21 a
      · exact absurd u29 a
      · exact absurd u6 a
      · exact absurd a u32
    have u55 : ¬v272 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd u38 a
      · exact absurd u44 a
      · exact absurd u35 a
      · exact absurd u46 a
    have u56 : v317 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u10
    have u57 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u27 a
      · exact absurd u41 a
    have u58 : v352 := by
      rcases c210 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd n3 a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd u46 a
    have u59 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u25 a
      · exact absurd u27 a
      · exact absurd a u36
      · exact absurd u41 a
    have u60 : ¬v254 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u38 a
      · exact absurd u44 a
      · exact absurd u46 a
      · exact absurd a u24
    have u61 : v255 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u27 a
      · exact absurd u41 a
      · exact absurd u31 a
      · exact absurd a u51
    have u62 : ¬v318 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd u56 a
      · exact absurd a u60
      · exact absurd a u24
      · exact absurd a u16
    have u63 : ¬v219 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd n5 a
      · exact absurd u61 a
      · exact absurd a u51
      · exact absurd a u52
    have u64 : ¬v321 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd n5 a
      · exact absurd u61 a
      · exact absurd u56 a
      · exact absurd a u24
    have u65 : v347 := by
      rcases c249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u62
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd u3 a
      · exact absurd a u32
    have u66 : ¬v333 := by
      rcases c236 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u62
    have u67 : ¬v358 := by
      rcases c212 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd n3 a
      · exact absurd a u24
      · exact absurd a u55
      · exact absurd a u16
    have u68 : v346 := by
      rcases c506 with a|a|a|a
      · exact a
      · exact absurd a u67
      · exact absurd u65 a
      · exact absurd u58 a
    have u69 : ¬v332 := by
      rcases c504 with a|a|a|a
      · exact a
      · exact absurd a u66
      · exact absurd a u48
      · exact absurd u58 a
    have u70 : v300 := by
      rcases c267 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u68 a
      · exact absurd a u54
      · exact absurd u21 a
      · exact absurd a u67
    have u71 : v236 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd u68 a
      · exact absurd n5 a
      · exact absurd a u52
      · exact absurd a u63
      · exact absurd a u64
    have u72 : ¬v232 := by
      rcases c158 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd a u69
      · exact absurd a u2
      · exact absurd u49 a
      · exact absurd a u48
    have u73 : v331 := by
      rcases c578 with a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u74 : ¬v349 := by
      rcases c572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u38 a
      · exact absurd a u43
      · exact absurd u49 a
      · exact absurd a u11
      · exact absurd u31 a
      · exact absurd a u15
      · exact absurd a u42
      · exact absurd u35 a
      · exact absurd u46 a
      · exact absurd a u54
      · exact absurd a u17
      · exact absurd n6 a
      · exact absurd a u69
      · exact absurd u68 a
    have u75 : ¬v345 := by
      rcases c272 with a|a|a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd u68 a
      · exact absurd n6 a
      · exact absurd a u69
      · exact absurd a u74
    have u76 : ¬v339 := by
      rcases c503 with a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd a u69
      · exact absurd a u74
    have u77 : v231 := by
      rcases c156 with a|a|a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd u53 a
      · exact absurd a u72
      · exact absurd a u69
      · exact absurd a u74
    have u78 : ¬v267 := by
      rcases c114 with a|a|a|a|a|a
      · exact absurd u77 a
      · exact absurd a u74
      · exact absurd u46 a
      · exact absurd u44 a
      · exact absurd a u72
      · exact a
    have u79 : ¬v355 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd a u75
      · exact absurd u68 a
      · exact absurd a u74
    have u80 : ¬v356 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u22 a
      · exact absurd a u67
    have u81 : ¬v271 := by
      rcases c315 with a|a|a|a
      · exact absurd a u79
      · exact a
      · exact absurd u19 a
      · exact absurd a u55
    have u82 : ¬v320 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd a u79
      · exact absurd u14 a
    have u83 : ¬v239 := by
      rcases c145 with a|a|a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u70 a
      · exact absurd u71 a
      · exact absurd a u17
      · exact absurd a u43
    have u84 : v205 := by
      rcases c115 with a|a|a|a|a|a
      · exact a
      · exact absurd a u81
      · exact absurd u38 a
      · exact absurd u19 a
      · exact absurd a u51
      · exact absurd a u55
    have u85 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u81
      · exact absurd u84 a
      · exact absurd a u51
    have u86 : v299 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u82
    have u87 : ¬v262 := by
      rcases c314 with a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd a u15
      · exact absurd a u78
    have u88 : v335 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u84 a
      · exact absurd u34 a
      · exact absurd u53 a
      · exact absurd u37 a
      · exact absurd a u52
      · exact absurd a u85
      · exact absurd a u83
      · exact absurd a u87
      · exact absurd a u81
      · exact absurd u6 a
      · exact absurd u8 a
      · exact absurd u86 a
      · exact absurd a u17
      · exact absurd n4 a
      · exact absurd u26 a
      · exact absurd n6 a
      · exact absurd u73 a
      · exact absurd a u76
      · exact absurd n7 a
      · exact absurd a u75
      · exact absurd a u79
      · exact absurd a u80
      · exact absurd u22 a
      · exact absurd n0 a
    have u89 : ¬v226 := by
      rcases c100 with a|a|a|a|a|a
      · exact absurd a u81
      · exact absurd a u85
      · exact a
      · exact absurd u88 a
      · exact absurd a u87
      · exact absurd u84 a
    have u90 : ¬v241 := by
      rcases c104 with a|a|a|a|a|a
      · exact absurd a u89
      · exact absurd u84 a
      · exact absurd u34 a
      · exact a
      · exact absurd a u39
      · exact absurd u37 a
    have u91 : ¬v341 := by
      rcases c160 with a|a|a|a|a|a
      · exact absurd a u89
      · exact absurd u37 a
      · exact absurd a u76
      · exact absurd n7 a
      · exact absurd u49 a
      · exact a
    have u92 : ¬v362 := by
      rcases c511 with a|a|a|a
      · exact absurd a u91
      · exact a
      · exact absurd n7 a
      · exact absurd a u76
    have u93 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u92
      · exact absurd u22 a
      · exact absurd n0 a
    rcases c167 with a|a|a|a|a|a
    · exact absurd a u90
    · exact absurd u93 a
    · exact absurd n0 a
    · exact absurd u33 a
    · exact absurd u40 a
    · exact absurd a u92
  have c582 : v355 ∨ v204 ∨ ¬v205 ∨ ¬v206 ∨ ¬v226 ∨ ¬v236 ∨ v272 ∨ ¬v275 ∨ ¬v335 ∨ v340 ∨ v358 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v356 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n11 a
      · exact absurd a n10
    have u2 : ¬v271 := by
      rcases c315 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n7 a
      · exact absurd a n6
    have u3 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n1
    have u4 : ¬v239 := by
      rcases c116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd n5 a
    have u5 : v262 := by
      rcases c100 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd n8 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v339 := by
      rcases c279 with a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n8 a
      · exact absurd n11 a
      · exact absurd a n0
      · exact absurd a u1
    rcases c102 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n4 a
    · exact absurd n7 a
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd n2 a
  have c583 : v362 ∨ v202 ∨ v204 ∨ ¬v229 ∨ ¬v236 ∨ ¬v243 ∨ v272 ∨ ¬v278 ∨ v280 ∨ v283 ∨ ¬v292 ∨ ¬v300 ∨ v304 ∨ ¬v308 ∨ ¬v329 ∨ ¬v335 ∨ ¬v344 ∨ v358 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
    have u4 : v315 := by
      rcases c529 with a|a
      · exact a
      · exact absurd a n9
    have u5 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a n8
      · exact a
      · exact absurd u2 a
    have u7 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
    have u10 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n7 a
    have u11 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
    have u12 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u8
    have u13 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd u5 a
    have u14 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
    have u16 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
    have u17 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u13
    have u18 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
    have u19 : v287 := by
      rcases c540 with a|a
      · exact absurd a u14
      · exact a
    have u20 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u19 a
    have u21 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd u16 a
    have u22 : ¬v314 := by
      rcases c492 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact absurd a u14
    have u23 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd n7 a
      · exact absurd u21 a
      · exact absurd u17 a
    have u24 : ¬v215 := by
      rcases c147 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n18 a
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd n13 a
    have u25 : ¬v257 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd u21 a
      · exact absurd u18 a
      · exact absurd a u12
    have u26 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u23 a
      · exact absurd n18 a
    have u27 : v251 := by
      rcases c87 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u2 a
      · exact a
      · exact absurd n13 a
      · exact absurd a u6
      · exact absurd a n8
    have u28 : ¬v252 := by
      rcases c425 with a|a|a|a
      · exact absurd u27 a
      · exact absurd n13 a
      · exact a
      · exact absurd a n8
    have u29 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n13 a
      · exact absurd a u28
      · exact absurd u16 a
      · exact absurd u27 a
    have u30 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u10 a
      · exact absurd u18 a
      · exact absurd n7 a
      · exact absurd a u6
    have u31 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd u27 a
      · exact absurd u20 a
      · exact absurd n13 a
      · exact absurd a u28
    have u32 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u15 a
    have u33 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u11 a
      · exact absurd a u32
      · exact absurd a n9
      · exact absurd a u7
    have u34 : v223 := by
      rcases c149 with a|a|a|a|a|a
      · exact a
      · exact absurd n14 a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact absurd n16 a
      · exact absurd a u22
    have u35 : ¬v328 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd n14 a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a u12
    have u36 : v221 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n18 a
      · exact absurd n5 a
      · exact absurd a u35
      · exact absurd a u12
    have u37 : ¬v209 := by
      rcases c135 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u19 a
      · exact absurd u36 a
      · exact absurd a u8
      · exact absurd a u35
    have u38 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u29 a
      · exact absurd u30 a
    have u39 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u27 a
      · exact absurd u29 a
      · exact absurd a u6
      · exact absurd u30 a
    have u40 : v255 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u29 a
      · exact absurd u30 a
      · exact absurd u33 a
      · exact absurd a n2
    have u41 : ¬v279 := by
      rcases c230 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd u23 a
      · exact absurd u17 a
      · exact absurd n18 a
    have u42 : ¬v277 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n18 a
      · exact absurd a n8
      · exact absurd a u41
      · exact absurd a n0
    have u43 : v205 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u17 a
      · exact absurd u3 a
      · exact absurd u10 a
      · exact absurd a u41
    have u44 : ¬v321 := by
      rcases c174 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd u18 a
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a u8
    have u45 : ¬v340 := by
      rcases c264 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n16 a
      · exact absurd n13 a
      · exact absurd n10 a
      · exact absurd a n12
    have u46 : v241 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n18 a
      · exact absurd u2 a
      · exact absurd n5 a
      · exact absurd a n0
    have u47 : v322 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a u25
      · exact absurd u39 a
      · exact absurd u40 a
      · exact absurd a u12
    have u48 : v226 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd u3 a
      · exact absurd u46 a
      · exact absurd a n1
      · exact absurd n3 a
    have u49 : v355 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u43 a
      · exact absurd u10 a
      · exact absurd u48 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd u17 a
      · exact absurd n15 a
      · exact absurd a u45
      · exact absurd a n17
      · exact absurd u23 a
    have u50 : v299 := by
      rcases c327 with a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd n11 a
      · exact absurd a u13
    have u51 : v356 := by
      rcases c507 with a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd u23 a
      · exact absurd a n17
    have u52 : ¬v320 := by
      rcases c456 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd u50 a
      · exact absurd u5 a
    rcases c269 with a|a|a|a|a|a
    · exact absurd u51 a
    · exact absurd u47 a
    · exact absurd a u52
    · exact absurd u49 a
    · exact absurd a u44
    · exact absurd a n17
  have c584 : ¬v335 ∨ v202 ∨ v204 ∨ ¬v229 ∨ ¬v236 ∨ ¬v243 ∨ v272 ∨ ¬v278 ∨ v280 ∨ v283 ∨ ¬v292 ∨ ¬v300 ∨ v304 ∨ ¬v308 ∨ ¬v329 ∨ ¬v343 ∨ ¬v344 ∨ v358 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
    have u4 : v315 := by
      rcases c529 with a|a
      · exact a
      · exact absurd a n9
    have u5 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a n8
      · exact a
      · exact absurd u2 a
    have u7 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
    have u10 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n7 a
    have u11 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
    have u12 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u8
    have u13 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd u5 a
    have u14 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
    have u16 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
    have u17 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u13
    have u18 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
    have u19 : v287 := by
      rcases c540 with a|a
      · exact absurd a u14
      · exact a
    have u20 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u19 a
    have u21 : ¬v309 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u11 a
      · exact absurd a u14
    have u22 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd u16 a
    have u23 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd n7 a
      · exact absurd u22 a
      · exact absurd u17 a
    have u24 : ¬v215 := by
      rcases c147 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n18 a
      · exact absurd a u1
      · exact absurd u22 a
      · exact absurd n13 a
    have u25 : v362 := by
      rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd n14 a
      · exact absurd n0 a
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd n18 a
    have u26 : ¬v265 := by
      rcases c111 with a|a|a|a|a|a
      · exact absurd n16 a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact absurd a n8
    have u27 : ¬v257 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd u22 a
      · exact absurd u18 a
      · exact absurd a u12
    have u28 : v251 := by
      rcases c87 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u2 a
      · exact a
      · exact absurd n13 a
      · exact absurd a u6
      · exact absurd a n8
    have u29 : ¬v252 := by
      rcases c425 with a|a|a|a
      · exact absurd u28 a
      · exact absurd n13 a
      · exact a
      · exact absurd a n8
    have u30 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n13 a
      · exact absurd a u29
      · exact absurd u16 a
      · exact absurd u28 a
    have u31 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u10 a
      · exact absurd u18 a
      · exact absurd n7 a
      · exact absurd a u6
    have u32 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd u28 a
      · exact absurd u20 a
      · exact absurd n13 a
      · exact absurd a u29
    have u33 : ¬v263 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u32 a
      · exact absurd u18 a
      · exact absurd u10 a
      · exact absurd a n1
    have u34 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u15 a
    have u35 : v291 := by
      rcases c185 with a|a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a u33
      · exact absurd u32 a
      · exact absurd u20 a
      · exact absurd a u26
    have u36 : v227 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd n15 a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u26
    have u37 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u32 a
      · exact absurd u15 a
    have u38 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u11 a
      · exact absurd a u34
      · exact absurd a n9
      · exact absurd a u7
    have u39 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u32 a
      · exact absurd a u34
      · exact absurd a n1
      · exact absurd u31 a
    have u40 : v307 := by
      rcases c242 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u35 a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u20 a
    have u41 : v268 := by
      rcases c182 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u18 a
      · exact absurd u32 a
      · exact absurd a u33
      · exact absurd a u37
    have u42 : ¬v214 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n18 a
      · exact absurd u40 a
      · exact absurd u22 a
      · exact absurd a u1
    have u43 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n18 a
      · exact absurd u22 a
      · exact absurd a u8
      · exact absurd u40 a
      · exact absurd a u12
    have u44 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd u40 a
      · exact absurd n18 a
      · exact absurd a u29
      · exact absurd n13 a
    have u45 : ¬v209 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u18 a
      · exact absurd a u42
      · exact absurd u31 a
      · exact absurd a u8
    have u46 : ¬v312 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd n15 a
      · exact absurd a u33
      · exact absurd a u44
      · exact absurd a u43
    have u47 : ¬v342 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a u33
      · exact absurd n7 a
      · exact absurd n18 a
      · exact absurd a u44
    have u48 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u30 a
      · exact absurd u31 a
    have u49 : v317 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u21
    have u50 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u28 a
      · exact absurd u30 a
      · exact absurd a u6
      · exact absurd u31 a
    have u51 : ¬v254 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u10 a
      · exact absurd u39 a
      · exact absurd u41 a
      · exact absurd a u27
    have u52 : v255 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u30 a
      · exact absurd u31 a
      · exact absurd u38 a
      · exact absurd a n2
    have u53 : ¬v318 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd u49 a
      · exact absurd a u51
      · exact absurd a u27
      · exact absurd a u12
    have u54 : ¬v321 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd u4 a
      · exact absurd u52 a
      · exact absurd u49 a
      · exact absurd a u27
    have u55 : v322 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u4 a
      · exact absurd a u51
      · exact absurd u52 a
      · exact absurd u50 a
    have u56 : ¬v239 := by
      rcases c165 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd n18 a
      · exact absurd u23 a
      · exact absurd n5 a
      · exact absurd a u1
    have u57 : ¬v339 := by
      rcases c161 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd n15 a
      · exact absurd u36 a
      · exact a
      · exact absurd n5 a
      · exact absurd a u56
    have u58 : v341 := by
      rcases c511 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd n15 a
      · exact absurd a u57
    have u59 : v205 := by
      rcases c294 with a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u17 a
      · exact absurd u10 a
    have u60 : ¬v340 := by
      rcases c331 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u57
      · exact absurd a u47
    have u61 : v226 := by
      rcases c160 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u57
      · exact absurd n15 a
      · exact absurd u36 a
      · exact absurd u58 a
    have u62 : v355 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u59 a
      · exact absurd u10 a
      · exact absurd u61 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd u17 a
      · exact absurd n0 a
      · exact absurd a u60
      · exact absurd a n17
      · exact absurd u23 a
    have u63 : v299 := by
      rcases c327 with a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd n11 a
      · exact absurd a u13
    have u64 : v356 := by
      rcases c507 with a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u23 a
      · exact absurd a n17
    have u65 : ¬v320 := by
      rcases c456 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd u63 a
      · exact absurd u5 a
    rcases c269 with a|a|a|a|a|a
    · exact absurd u64 a
    · exact absurd u55 a
    · exact absurd a u65
    · exact absurd u62 a
    · exact absurd a u54
    · exact absurd a n17
  have c585 : ¬v355 ∨ v283 ∨ ¬v300 ∨ ¬v322 ∨ v358 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
    have u4 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd u1 a
    have u5 : v299 := by
      rcases c327 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u4
    have u6 : v356 := by
      rcases c507 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a n4
    have u7 : ¬v321 := by
      rcases c250 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u4
    have u8 : ¬v320 := by
      rcases c456 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd u1 a
    rcases c269 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd n3 a
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a n4
  have c586 : ¬v362 ∨ ¬v261 ∨ v262 ∨ v265 ∨ v335 ∨ v339 ∨ ¬v343 ∨ v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v341 := by
      rcases c511 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact absurd a n5
    have u2 : v357 := by
      rcases c281 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd n0 a
    have u3 : v338 := by
      rcases c508 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
    rcases c222 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd n1 a
  have c587 : ¬v278 ∨ ¬v246 ∨ v252 ∨ ¬v307 ∨ ¬v315 ∨ ¬v343 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n4 a
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n4 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
    have u6 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u7 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    have u8 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u9 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u11 : ¬v265 := by
      rcases c428 with a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u12 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
    have u14 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd u6 a
    have u15 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u12
    have u16 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u9 a
    have u17 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
    have u18 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u16
    have u19 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u16
    have u20 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u16
    have u21 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u17 a
    have u22 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd u21 a
      · exact absurd u18 a
    have u23 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u21 a
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a u15
    have u24 : v251 := by
      rcases c562 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd n3 a
      · exact absurd n6 a
    have u25 : ¬v304 := by
      rcases c191 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u16
    have u26 : v308 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd n3 a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd u19 a
    have u27 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u26 a
    have u28 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd u17 a
    have u29 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd n3 a
      · exact absurd n6 a
      · exact absurd a n2
      · exact absurd u26 a
    have u30 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u26 a
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd u24 a
    have u31 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u27
    have u32 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u27
    have u33 : ¬v257 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd n6 a
      · exact absurd n0 a
      · exact absurd a u29
      · exact absurd a u15
    have u34 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u1
    have u35 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u32 a
      · exact absurd a u27
      · exact a
      · exact absurd u31 a
    have u36 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u11
    have u37 : v266 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u1
      · exact absurd a u10
    have u38 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u2
      · exact absurd n0 a
    have u39 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u32 a
      · exact absurd a u11
    have u40 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u38 a
      · exact absurd u19 a
      · exact absurd n0 a
      · exact absurd a u35
    have u41 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u29
      · exact absurd u32 a
      · exact absurd u38 a
      · exact absurd a u11
    have u42 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u39
      · exact absurd u40 a
    have u43 : v268 := by
      rcases c182 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u19 a
      · exact absurd n1 a
      · exact absurd a u41
      · exact absurd a u14
    have u44 : ¬v204 := by
      rcases c574 with a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u37 a
    have u45 : ¬v230 := by
      rcases c358 with a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u37 a
      · exact absurd u42 a
    have u46 : ¬v272 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u38 a
      · exact absurd u42 a
      · exact absurd u37 a
      · exact absurd u43 a
    have u47 : ¬v312 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd n5 a
      · exact absurd a u41
      · exact absurd a u29
      · exact absurd a u23
    have u48 : ¬v330 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u49 : v344 := by
      rcases c266 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u26 a
      · exact absurd n6 a
      · exact absurd n3 a
      · exact absurd u8 a
    have u50 : ¬v342 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u41
      · exact absurd n0 a
      · exact absurd n6 a
      · exact absurd a u29
    have u51 : ¬v309 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a u4
    have u52 : v291 := by
      rcases c185 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u41
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u11
    have u53 : ¬v297 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd u17 a
      · exact absurd u24 a
    have u54 : ¬v296 := by
      rcases c263 with a|a|a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd u21 a
      · exact absurd u28 a
      · exact absurd u6 a
      · exact absurd a u53
    have u55 : v243 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u32 a
      · exact absurd n5 a
      · exact absurd a u29
      · exact absurd a u11
    have u56 : v227 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd n5 a
      · exact absurd a u39
      · exact absurd u36 a
      · exact absurd a u11
    have u57 : v224 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd a u14
      · exact absurd a u39
    have u58 : v317 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u51
    have u59 : ¬v214 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd n6 a
      · exact absurd n3 a
      · exact absurd u21 a
      · exact absurd a u2
    have u60 : ¬v209 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u19 a
      · exact absurd a u59
      · exact absurd u40 a
      · exact absurd a u12
    have u61 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd u30 a
      · exact absurd u40 a
    have u62 : v258 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u24 a
      · exact absurd u30 a
      · exact absurd a u35
      · exact absurd u40 a
    have u63 : v329 := by
      rcases c181 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u17 a
      · exact absurd u26 a
      · exact absurd a u27
      · exact absurd u24 a
    have u64 : v221 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n6 a
      · exact absurd u55 a
      · exact absurd a u23
      · exact absurd a u15
    have u65 : v352 := by
      rcases c210 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd n0 a
      · exact absurd a u33
      · exact absurd a u15
      · exact absurd u43 a
    have u66 : ¬v254 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u38 a
      · exact absurd u42 a
      · exact absurd u43 a
      · exact absurd a u33
    have u67 : v255 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u30 a
      · exact absurd u40 a
      · exact absurd u34 a
      · exact absurd a u44
    have u68 : v218 := by
      rcases c88 with a|a|a|a|a|a
      · exact a
      · exact absurd a u66
      · exact absurd u42 a
      · exact absurd u57 a
      · exact absurd a u14
      · exact absurd a u51
    have u69 : ¬v318 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u58 a
      · exact absurd a u66
      · exact absurd a u33
      · exact absurd a u15
    have u70 : ¬v219 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd n4 a
      · exact absurd u67 a
      · exact absurd a u44
      · exact absurd a u45
    have u71 : ¬v321 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u66
      · exact absurd n4 a
      · exact absurd u67 a
      · exact absurd u58 a
      · exact absurd a u33
    have u72 : v347 := by
      rcases c249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u69
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd u3 a
      · exact absurd a u53
    have u73 : ¬v333 := by
      rcases c236 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a u51
      · exact absurd a u69
    have u74 : v322 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd a u69
      · exact absurd n4 a
      · exact absurd a u66
      · exact absurd u67 a
      · exact absurd u62 a
    have u75 : ¬v358 := by
      rcases c212 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd n0 a
      · exact absurd a u33
      · exact absurd a u46
      · exact absurd a u15
    have u76 : v346 := by
      rcases c506 with a|a|a|a
      · exact a
      · exact absurd a u75
      · exact absurd u72 a
      · exact absurd u65 a
    have u77 : ¬v332 := by
      rcases c504 with a|a|a|a
      · exact a
      · exact absurd a u73
      · exact absurd a u50
      · exact absurd u65 a
    have u78 : v300 := by
      rcases c267 with a|a|a|a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd u76 a
      · exact absurd a u54
      · exact absurd u21 a
      · exact absurd a u75
    have u79 : v236 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd u76 a
      · exact absurd n4 a
      · exact absurd a u45
      · exact absurd a u70
      · exact absurd a u71
    have u80 : ¬v232 := by
      rcases c158 with a|a|a|a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd a u77
      · exact absurd a u2
      · exact absurd u56 a
      · exact absurd a u50
    have u81 : ¬v355 := by
      rcases c585 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u78 a
      · exact absurd u74 a
      · exact absurd a u75
      · exact absurd u22 a
    have u82 : ¬v239 := by
      rcases c145 with a|a|a|a|a|a
      · exact a
      · exact absurd a u81
      · exact absurd u78 a
      · exact absurd u79 a
      · exact absurd a u16
      · exact absurd a u59
    have u83 : ¬v335 := by
      rcases c584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u44
      · exact absurd u36 a
      · exact absurd u79 a
      · exact absurd u55 a
      · exact absurd a u46
      · exact absurd n0 a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd u28 a
      · exact absurd u78 a
      · exact absurd a u25
      · exact absurd u26 a
      · exact absurd u63 a
      · exact absurd n5 a
      · exact absurd u49 a
      · exact absurd a u75
      · exact absurd n6 a
    have u84 : ¬v271 := by
      rcases c315 with a|a|a|a
      · exact absurd a u81
      · exact a
      · exact absurd u18 a
      · exact absurd a u46
    have u85 : v205 := by
      rcases c115 with a|a|a|a|a|a
      · exact a
      · exact absurd a u84
      · exact absurd u38 a
      · exact absurd u18 a
      · exact absurd a u44
      · exact absurd a u46
    have u86 : ¬v356 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd a u81
      · exact absurd u22 a
      · exact absurd a u75
    have u87 : ¬v320 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd a u81
      · exact absurd u13 a
    have u88 : v220 := by
      rcases c303 with a|a|a|a
      · exact a
      · exact absurd u64 a
      · exact absurd u13 a
      · exact absurd a u82
    have u89 : ¬v235 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a u84
      · exact absurd u85 a
      · exact absurd a u44
    have u90 : v299 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u87
    have u91 : v231 := by
      rcases c150 with a|a|a|a|a|a
      · exact absurd u68 a
      · exact absurd a u89
      · exact a
      · exact absurd a u45
      · exact absurd a u70
      · exact absurd u88 a
    have u92 : v212 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd u79 a
      · exact absurd u78 a
      · exact absurd a u89
      · exact absurd u90 a
      · exact absurd a u81
    have u93 : ¬v345 := by
      rcases c142 with a|a|a|a|a|a
      · exact absurd u92 a
      · exact absurd a u89
      · exact a
      · exact absurd u90 a
      · exact absurd a u45
      · exact absurd a u1
    have u94 : ¬v349 := by
      rcases c505 with a|a|a|a
      · exact absurd a u93
      · exact absurd a u81
      · exact absurd u76 a
      · exact a
    have u95 : v337 := by
      rcases c277 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd a u93
      · exact absurd u72 a
      · exact absurd a u83
      · exact absurd a u86
    have u96 : v336 := by
      rcases c274 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd a u93
      · exact absurd u76 a
      · exact absurd a u83
      · exact absurd a u81
    have u97 : v261 := by
      rcases c217 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u37 a
      · exact absurd a u93
      · exact absurd a u83
      · exact absurd a u84
    have u98 : ¬v267 := by
      rcases c114 with a|a|a|a|a|a
      · exact absurd u91 a
      · exact absurd a u94
      · exact absurd u43 a
      · exact absurd u42 a
      · exact absurd a u80
      · exact a
    have u99 : ¬v340 := by
      rcases c280 with a|a|a|a|a|a
      · exact a
      · exact absurd u95 a
      · exact absurd u22 a
      · exact absurd a u50
      · exact absurd a u86
      · exact absurd a u75
    have u100 : ¬v339 := by
      rcases c276 with a|a|a|a|a|a
      · exact absurd a u81
      · exact a
      · exact absurd u96 a
      · exact absurd a u77
      · exact absurd a u94
      · exact absurd u76 a
    have u101 : ¬v262 := by
      rcases c216 with a|a|a|a|a|a
      · exact a
      · exact absurd u97 a
      · exact absurd u37 a
      · exact absurd a u14
      · exact absurd a u98
      · exact absurd a u84
    have u102 : ¬v362 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u97 a
      · exact absurd a u101
      · exact absurd a u11
      · exact absurd a u83
      · exact absurd a u100
      · exact absurd n5 a
      · exact absurd a u81
    have u103 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u102
      · exact absurd u22 a
      · exact absurd n6 a
    have u104 : ¬v277 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd u103 a
      · exact absurd n6 a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u102
    have u105 : v357 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u103 a
      · exact a
      · exact absurd u22 a
      · exact absurd a u81
      · exact absurd a u86
      · exact absurd a u102
    have u106 : v341 := by
      rcases c223 with a|a|a|a|a|a
      · exact absurd a u104
      · exact a
      · exact absurd u18 a
      · exact absurd a u100
      · exact absurd a u101
      · exact absurd a u102
    have u107 : v338 := by
      rcases c508 with a|a|a|a
      · exact absurd u105 a
      · exact a
      · exact absurd u106 a
      · exact absurd a u83
    rcases c282 with a|a|a|a|a|a
    · exact absurd u107 a
    · exact absurd u49 a
    · exact absurd a u83
    · exact absurd u106 a
    · exact absurd u95 a
    · exact absurd a u99
  have c588 : v278 ∨ v279 ∨ v280 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
    have u3 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
    have u4 : ¬v206 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
    have u5 : v242 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
    rcases c366 with a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a u3
  have c589 : v151 ∨ v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c336 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c337 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c590 : ¬v153 ∨ ¬v199 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v154 := by
      rcases c353 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c350 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c591 : v153 ∨ v197 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v152 := by
      rcases c344 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c342 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c592 : v153 ∨ ¬v199 ∨ v242 ∨ ¬v244 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v197 := by
      rcases c591 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c33 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd n3 a
    · exact absurd n1 a
    · exact absurd a n2
  have c593 : ¬v199 ∨ v242 ∨ ¬v244 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v153 := by
      rcases c592 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
    rcases c590 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c594 : v344 ∨ v198 ∨ ¬v200 ∨ ¬v251 ∨ v265 ∨ v279 ∨ v280 ∨ v281 ∨ ¬v284 ∨ ¬v292 ∨ ¬v307 ∨ ¬v308 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a u1
    have u3 : ¬v252 := by
      rcases c425 with a|a|a|a
      · exact absurd n3 a
      · exact absurd n11 a
      · exact a
      · exact absurd a n6
    have u4 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a n6
    have u5 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
    have u6 : v278 := by
      rcases c588 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n12 a
    have u7 : v287 := by
      rcases c540 with a|a
      · exact absurd a n7
      · exact a
    have u8 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u7 a
    have u9 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u1
    have u10 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd n8 a
    have u11 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact a
      · exact absurd u4 a
    have u12 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n4
    have u13 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v314 := by
      rcases c492 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact absurd a n7
    have u15 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact absurd n11 a
      · exact absurd a u3
    have u16 : ¬v329 := by
      rcases c248 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd n11 a
    have u17 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u9
    have u18 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u10
    have u19 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u10
    have u20 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u10
    have u21 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u6 a
    have u22 : ¬v199 := by
      rcases c593 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd n12 a
    have u23 : ¬v258 := by
      rcases c181 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u17 a
      · exact absurd n11 a
      · exact absurd a n6
      · exact absurd n3 a
    have u24 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd u17 a
    have u25 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n11 a
      · exact absurd a u3
      · exact absurd u17 a
      · exact absurd n3 a
    have u26 : ¬v201 := by
      rcases c62 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd n3 a
      · exact absurd u25 a
      · exact absurd a u11
      · exact absurd n2 a
    have u27 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n12 a
      · exact absurd u24 a
      · exact absurd a u1
      · exact absurd n10 a
      · exact absurd a u9
    have u28 : ¬v215 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u24 a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact absurd a u13
    have u29 : v209 := by
      rcases c499 with a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd u25 a
      · exact absurd n2 a
    have u30 : ¬v257 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd n12 a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a u9
    have u31 : v228 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n11 a
      · exact absurd n9 a
      · exact absurd u4 a
      · exact absurd a u28
    have u32 : v222 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd n11 a
      · exact absurd u4 a
      · exact absurd a u28
    have u33 : ¬v213 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u20
      · exact absurd u25 a
      · exact absurd n2 a
      · exact absurd n8 a
    have u34 : v214 := by
      rcases c59 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd u25 a
      · exact absurd u19 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
    have u35 : v223 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u4 a
      · exact absurd a u16
    have u36 : ¬v217 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd u35 a
      · exact absurd a u14
    have u37 : ¬v221 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd u35 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u27
    have u38 : ¬v216 := by
      rcases c137 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u4 a
      · exact absurd u29 a
      · exact absurd u35 a
      · exact absurd a u28
    have u39 : v210 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u36
      · exact absurd u31 a
      · exact absurd a u28
      · exact absurd u29 a
    have u40 : v239 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a u37
      · exact absurd a u30
      · exact absurd u2 a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    have u41 : ¬v243 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a u37
      · exact absurd u35 a
      · exact absurd u5 a
      · exact absurd u21 a
      · exact a
      · exact absurd a u26
    have u42 : ¬v154 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd n12 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd u4 a
    have u43 : v153 := by
      rcases c346 with a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u4 a
      · exact absurd a u22
    have u44 : ¬v146 := by
      rcases c15 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u4 a
      · exact absurd u43 a
      · exact absurd a u28
      · exact absurd a u38
    have u45 : ¬v152 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u4 a
      · exact absurd u43 a
      · exact absurd a u13
      · exact absurd a u41
    have u46 : v148 := by
      rcases c24 with a|a|a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd u4 a
      · exact absurd u12 a
      · exact absurd u31 a
      · exact absurd a u42
    have u47 : v151 := by
      rcases c589 with a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u40 a
    have u48 : ¬v304 := by
      rcases c191 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u19 a
      · exact absurd u24 a
      · exact absurd a u20
      · exact absurd a u10
    have u49 : v197 := by
      rcases c35 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd n12 a
      · exact absurd u4 a
      · exact absurd u43 a
      · exact absurd a u13
    have u50 : v361 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd u24 a
      · exact absurd u18 a
    have u51 : v169 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n10 a
      · exact absurd u34 a
      · exact absurd a u45
      · exact absurd a u41
    have u52 : ¬v194 := by
      rcases c338 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u40 a
      · exact absurd a u45
    have u53 : v165 := by
      rcases c285 with a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u39 a
      · exact absurd u46 a
    have u54 : ¬v362 := by
      rcases c46 with a|a|a|a|a|a
      · exact absurd u51 a
      · exact absurd a u52
      · exact a
      · exact absurd n10 a
      · exact absurd a n1
      · exact absurd a u10
    have u55 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u50 a
      · exact absurd n12 a
    have u56 : ¬v277 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd n12 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u54
    have u57 : v195 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd n12 a
      · exact absurd u50 a
      · exact absurd u55 a
      · exact absurd a u22
    have u58 : v205 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd u21 a
      · exact absurd a n5
    have u59 : v168 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u50 a
      · exact absurd a u52
      · exact absurd a u10
      · exact absurd a u48
    have u60 : v145 := by
      rcases c2 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd n2 a
      · exact absurd u58 a
      · exact absurd a u44
      · exact absurd a u33
    have u61 : v155 := by
      rcases c496 with a|a|a|a
      · exact a
      · exact absurd u60 a
      · exact absurd n2 a
      · exact absurd a u44
    have u62 : ¬v290 := by
      rcases c37 with a|a|a|a|a|a
      · exact absurd u61 a
      · exact absurd u59 a
      · exact a
      · exact absurd u15 a
      · exact absurd u53 a
      · exact absurd a u20
    have u63 : v291 := by
      rcases c237 with a|a|a|a|a|a
      · exact a
      · exact absurd a u62
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u1
      · exact absurd a u10
    rcases c44 with a|a|a|a|a|a
    · exact absurd u51 a
    · exact absurd u59 a
    · exact absurd u63 a
    · exact absurd u53 a
    · exact absurd a u62
    · exact absurd a u10
  have c595 : ¬v344 ∨ ¬v200 ∨ v202 ∨ v207 ∨ v215 ∨ ¬v229 ∨ ¬v245 ∨ v263 ∨ v265 ∨ ¬v278 ∨ v281 ∨ ¬v286 ∨ ¬v292 ∨ ¬v306 ∨ v327 ∨ v343 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v285 := by
      rcases c485 with a|a|a|a
      · exact absurd n11 a
      · exact absurd a n14
      · exact a
      · exact absurd n13 a
    have u2 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : v287 := by
      rcases c540 with a|a
      · exact absurd a n10
      · exact a
    have u4 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd u3 a
    have u5 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n9 a
    have u6 : ¬v314 := by
      rcases c492 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact absurd a n10
    have u7 : v342 := by
      rcases c513 with a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd n16 a
      · exact absurd n0 a
    have u8 : v264 := by
      rcases c225 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n15
    have u9 : ¬v228 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n13 a
      · exact absurd n12 a
      · exact absurd a n4
      · exact absurd a u2
    have u10 : ¬v313 := by
      rcases c241 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n13 a
      · exact absurd n12 a
      · exact absurd n11 a
      · exact absurd a n14
    have u11 : ¬v291 := by
      rcases c265 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n15
      · exact absurd u4 a
      · exact absurd n12 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v253 := by
      rcases c206 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n8
      · exact a
      · exact absurd a u6
    have u13 : v312 := by
      rcases c239 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u1
      · exact a
      · exact absurd n13 a
      · exact absurd a n14
    have u14 : v217 := by
      rcases c92 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u15 : ¬v257 := by
      rcases c312 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n7
      · exact absurd a u12
    have u16 : v223 := by
      rcases c302 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n5 a
      · exact absurd a u6
    have u17 : ¬v209 := by
      rcases c124 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd u16 a
      · exact absurd a u6
    have u18 : v201 := by
      rcases c499 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n6 a
      · exact absurd n1 a
    rcases c90 with a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u18 a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n7
  have c596 : ¬v364 ∨ ¬v246 ∨ v252 ∨ ¬v307 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n4 a
    have u3 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
    have u5 : v287 := by
      rcases c540 with a|a
      · exact absurd a u3
      · exact a
    have u6 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u5 a
    have u7 : v288 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u8 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u4
    have u9 : ¬v314 := by
      rcases c492 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact absurd a u3
    have u10 : ¬v265 := by
      rcases c428 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u11 : ¬v247 := by
      rcases c558 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u12 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
    have u14 : ¬v260 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd u7 a
    have u15 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u12
    have u16 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u8 a
    have u17 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
    have u18 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u16
    have u19 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u16
    have u20 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u16
    have u21 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u17 a
    have u22 : v251 := by
      rcases c562 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u23 : ¬v328 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u21 a
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a u15
    have u24 : v308 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n3 a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd u19 a
    have u25 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u24 a
    have u26 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u24 a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd u17 a
    have u27 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u24 a
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd u22 a
    have u28 : ¬v279 := by
      rcases c202 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd u24 a
    have u29 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u25
    have u30 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u25
    have u31 : v278 := by
      rcases c588 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd n0 a
    have u32 : v248 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u1
    have u33 : ¬v257 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd n0 a
      · exact absurd u31 a
      · exact absurd a u28
      · exact absurd a u15
    have u34 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u30 a
      · exact absurd a u25
      · exact a
      · exact absurd u29 a
    have u35 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u10
    have u36 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd u31 a
    have u37 : ¬v343 := by
      rcases c587 with a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u38 : ¬v215 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u21 a
      · exact absurd u31 a
      · exact absurd u22 a
      · exact absurd a u36
    have u39 : v266 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u1
      · exact absurd a u11
    have u40 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u30 a
      · exact absurd a u10
    have u41 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd u31 a
    have u42 : ¬v199 := by
      rcases c593 with a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd u29 a
      · exact absurd n0 a
    have u43 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u41 a
      · exact absurd u19 a
      · exact absurd u31 a
      · exact absurd a u34
    have u44 : ¬v263 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd a u28
      · exact absurd u30 a
      · exact absurd u41 a
      · exact absurd a u10
    have u45 : v203 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u40
      · exact absurd u43 a
    have u46 : ¬v344 := by
      rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u40
      · exact absurd a u34
      · exact absurd a u38
      · exact absurd u35 a
      · exact absurd u27 a
      · exact absurd a u44
      · exact absurd a u10
      · exact absurd u31 a
      · exact absurd a u3
      · exact absurd u17 a
      · exact absurd u26 a
      · exact absurd u21 a
      · exact absurd a u15
      · exact absurd a u37
      · exact absurd n0 a
    have u47 : v268 := by
      rcases c182 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd n1 a
      · exact absurd a u44
      · exact absurd a u14
    have u48 : ¬v204 := by
      rcases c574 with a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u39 a
    have u49 : ¬v230 := by
      rcases c358 with a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u39 a
      · exact absurd u45 a
    have u50 : v228 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u24 a
      · exact absurd u26 a
      · exact absurd u29 a
      · exact absurd a u38
    have u51 : ¬v329 := by
      rcases c248 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd u24 a
    have u52 : ¬v313 := by
      rcases c246 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd u26 a
    have u53 : v198 := by
      rcases c594 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u46
      · exact a
      · exact absurd u43 a
      · exact absurd u22 a
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd u26 a
      · exact absurd n3 a
      · exact absurd u24 a
      · exact absurd n0 a
    have u54 : ¬v272 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u41 a
      · exact absurd u45 a
      · exact absurd u39 a
      · exact absurd u47 a
    have u55 : v222 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd u50 a
      · exact absurd a u52
      · exact absurd u17 a
      · exact absurd u26 a
      · exact absurd a u38
      · exact a
    have u56 : ¬v258 := by
      rcases c181 with a|a|a|a|a|a
      · exact absurd a u51
      · exact a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact absurd a u25
      · exact absurd u22 a
    have u57 : v171 := by
      rcases c49 with a|a|a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd u24 a
      · exact absurd a u42
    have u58 : v197 := by
      rcases c292 with a|a|a|a
      · exact absurd u53 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u42
    have u59 : ¬v178 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd n0 a
      · exact absurd a u42
      · exact absurd a u23
      · exact absurd a u51
    have u60 : v223 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u29 a
      · exact absurd a u51
    have u61 : ¬v201 := by
      rcases c62 with a|a|a|a|a|a
      · exact absurd a u56
      · exact a
      · exact absurd u22 a
      · exact absurd u27 a
      · exact absurd a u34
      · exact absurd u43 a
    have u62 : v164 := by
      rcases c290 with a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u5 a
      · exact absurd a u59
    have u63 : ¬v177 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd n0 a
      · exact absurd a u42
      · exact absurd a u15
      · exact absurd a u51
    have u64 : ¬v176 := by
      rcases c291 with a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd a u63
      · exact absurd a u15
    have u65 : v170 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u24 a
      · exact absurd u21 a
      · exact absurd n0 a
      · exact absurd a u42
    have u66 : ¬v161 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd n0 a
      · exact absurd u31 a
      · exact absurd u58 a
      · exact absurd a u28
    have u67 : v209 := by
      rcases c499 with a|a|a|a
      · exact absurd a u61
      · exact a
      · exact absurd u27 a
      · exact absurd u43 a
    have u68 : ¬v155 := by
      rcases c39 with a|a|a|a|a|a
      · exact absurd u57 a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact absurd u65 a
      · exact absurd a n2
    have u69 : ¬v221 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd u67 a
      · exact absurd u60 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
    have u70 : ¬v213 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd a u20
      · exact absurd u27 a
      · exact absurd u43 a
      · exact absurd u8 a
    have u71 : ¬v146 := by
      rcases c1 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u27 a
      · exact absurd u43 a
      · exact absurd u67 a
      · exact absurd a u68
    have u72 : v147 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u17 a
      · exact absurd u67 a
      · exact absurd u55 a
      · exact absurd a u63
    have u73 : v214 := by
      rcases c59 with a|a|a|a|a|a
      · exact absurd u67 a
      · exact absurd u27 a
      · exact absurd u19 a
      · exact a
      · exact absurd u43 a
      · exact absurd a u12
    have u74 : v212 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u27 a
      · exact absurd u32 a
      · exact absurd u43 a
      · exact absurd a u4
    have u75 : v239 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a u69
      · exact absurd a u33
      · exact absurd u13 a
      · exact absurd u18 a
      · exact absurd u41 a
      · exact a
    have u76 : ¬v152 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd u41 a
      · exact absurd a u69
      · exact absurd a u66
      · exact absurd a u33
    have u77 : ¬v145 := by
      rcases c496 with a|a|a|a
      · exact absurd a u68
      · exact a
      · exact absurd u43 a
      · exact absurd a u71
    have u78 : ¬v236 := by
      rcases c79 with a|a|a|a|a|a
      · exact absurd u73 a
      · exact absurd u74 a
      · exact a
      · exact absurd u41 a
      · exact absurd u43 a
      · exact absurd a u48
    have u79 : ¬v219 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd n4 a
      · exact absurd a u49
      · exact absurd a u4
      · exact absurd a u1
    have u80 : v151 := by
      rcases c589 with a|a|a
      · exact a
      · exact absurd a u76
      · exact absurd u75 a
    have u81 : v150 := by
      rcases c3 with a|a|a|a|a|a
      · exact a
      · exact absurd a u77
      · exact absurd u72 a
      · exact absurd a u61
      · exact absurd a u48
      · exact absurd a u79
    have u82 : ¬v205 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd a u77
      · exact absurd u80 a
      · exact absurd u43 a
      · exact a
      · exact absurd a u71
      · exact absurd a u70
    have u83 : v235 := by
      rcases c26 with a|a|a|a|a|a
      · exact absurd u81 a
      · exact absurd u75 a
      · exact a
      · exact absurd a u76
      · exact absurd u80 a
      · exact absurd a u78
    have u84 : v271 := by
      rcases c115 with a|a|a|a|a|a
      · exact absurd a u82
      · exact a
      · exact absurd u41 a
      · exact absurd u18 a
      · exact absurd a u48
      · exact absurd a u54
    have u85 : v299 := by
      rcases c300 with a|a|a|a
      · exact a
      · exact absurd u83 a
      · exact absurd u74 a
      · exact absurd a u70
    rcases c552 with a|a|a
    · exact absurd a u20
    · exact absurd u84 a
    · exact absurd u85 a
  have c597 : v206 ∨ v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c366 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    rcases c364 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c598 : ¬v206 ∨ v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c295 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    rcases c370 with a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c599 : v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v206 := by
      rcases c597 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c598 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c600 : v308 ∨ ¬v250 ∨ v252 ∨ ¬v306 ∨ ¬v307 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v251 := by
      rcases c559 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    rcases c197 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd n4 a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd n1 a
  have c601 : ¬v307 ∨ v252 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
    have u3 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    have u7 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u6 a
    have u8 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
    have u10 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u8
    have u11 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd u5 a
    have u12 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
    have u13 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u11
    have u14 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
    have u15 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u12 a
    have u16 : v308 := by
      rcases c600 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd n0 a
    have u17 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u16 a
    have u18 : v251 := by
      rcases c418 with a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd u16 a
      · exact a
    have u19 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u17
    have u20 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u20 a
      · exact absurd a u17
      · exact a
      · exact absurd u19 a
    have u22 : v278 := by
      rcases c599 with a|a
      · exact absurd a u21
      · exact a
    have u23 : v292 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u16 a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd u12 a
    have u24 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u18 a
      · exact absurd u7 a
      · exact absurd u16 a
      · exact absurd a n1
    have u25 : v364 := by
      rcases c201 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u22 a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd u15 a
    rcases c596 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd n2 a
  have c602 : ¬v198 ∨ ¬v200 ∨ ¬v239 ∨ ¬v245 ∨ ¬v250 ∨ v252 ∨ ¬v275 ∨ v277 ∨ v279 ∨ v280 ∨ v285 ∨ ¬v287 ∨ v328 ∨ v329 ∨ v362 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a n9
    have u2 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
    have u3 : v278 := by
      rcases c588 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n15 a
    have u4 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact a
      · exact absurd u1 a
    have u6 : ¬v257 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd n15 a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u4
    have u7 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v361 := by
      rcases c231 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd u3 a
      · exact absurd n6 a
      · exact absurd n15 a
    have u9 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd u3 a
    have u10 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u4
    have u11 : ¬v199 := by
      rcases c593 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd n15 a
    have u12 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd u8 a
      · exact absurd n15 a
    have u13 : v205 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd u2 a
      · exact absurd u9 a
      · exact absurd a n8
    have u14 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd u10 a
    have u15 : v197 := by
      rcases c292 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n15 a
      · exact absurd a u11
    have u16 : ¬v163 := by
      rcases c42 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n15 a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v161 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n15 a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a n8
    have u18 : v276 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v324 := by
      rcases c214 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
    have u20 : v284 := by
      rcases c533 with a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u19 a
    have u21 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n10
      · exact absurd u20 a
    have u22 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n4 a
      · exact absurd a u21
    have u23 : ¬v304 := by
      rcases c192 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u8 a
      · exact absurd n6 a
      · exact absurd a u22
      · exact absurd a u21
    have u24 : ¬v194 := by
      rcases c52 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n15 a
      · exact absurd u8 a
      · exact absurd a n14
      · exact absurd u15 a
    have u25 : v195 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n15 a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact absurd a u11
    have u26 : v308 := by
      rcases c258 with a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n15 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd u10 a
    have u27 : v251 := by
      rcases c418 with a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd u26 a
      · exact a
    have u28 : ¬v215 := by
      rcases c147 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n15 a
      · exact absurd a u7
      · exact absurd u14 a
      · exact absurd u26 a
    have u29 : ¬v177 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n15 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n13
    have u30 : ¬v176 := by
      rcases c291 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u29
      · exact absurd a u4
    have u31 : ¬v155 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u32 : v168 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u8 a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u23
    have u33 : v170 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u26 a
      · exact absurd u14 a
      · exact absurd n15 a
      · exact absurd a u11
    have u34 : ¬v258 := by
      rcases c181 with a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u10 a
      · exact absurd u26 a
      · exact absurd a n9
      · exact absurd u27 a
    have u35 : ¬v201 := by
      rcases c62 with a|a|a|a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd u27 a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd n1 a
    have u36 : v209 := by
      rcases c499 with a|a|a|a
      · exact absurd a u35
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u37 : ¬v213 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd a u22
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd u20 a
    have u38 : v222 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd u10 a
      · exact absurd u26 a
      · exact absurd u1 a
      · exact absurd a u28
    have u39 : v223 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u1 a
      · exact absurd a n13
    have u40 : ¬v221 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd u36 a
      · exact absurd u39 a
      · exact absurd n11 a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
    have u41 : ¬v152 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u9 a
      · exact absurd a u40
      · exact absurd a u17
      · exact absurd a u6
    have u42 : v151 := by
      rcases c589 with a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd n2 a
    have u43 : v145 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact absurd a u41
    have u44 : v146 := by
      rcases c496 with a|a|a|a
      · exact absurd a u31
      · exact absurd u43 a
      · exact absurd n1 a
      · exact a
    have u45 : v164 := by
      rcases c289 with a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u10 a
      · exact absurd a u29
    rcases c8 with a|a|a|a|a|a
    · exact absurd u44 a
    · exact absurd u32 a
    · exact absurd u20 a
    · exact absurd u36 a
    · exact absurd u45 a
    · exact absurd a u37
  have c603 : v252 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v307 := by
      rcases c601 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u2 : ¬v294 := by
      rcases c524 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
    have u4 : ¬v283 := by
      rcases c448 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u2
    have u5 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v284 := by
      rcases c547 with a|a
      · exact a
      · exact absurd a u4
    have u7 : v287 := by
      rcases c540 with a|a
      · exact absurd a u5
      · exact a
    have u8 : ¬v285 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v293 := by
      rcases c567 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u7 a
    have u10 : ¬v328 := by
      rcases c325 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd u7 a
    have u11 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a u8
    have u12 : v324 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u8
    have u13 : ¬v314 := by
      rcases c492 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact absurd a u5
    have u14 : ¬v291 := by
      rcases c242 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u7 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u9 a
    have u15 : ¬v343 := by
      rcases c243 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd u9 a
    have u16 : v286 := by
      rcases c534 with a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u11
    have u17 : ¬v303 := by
      rcases c470 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd u6 a
    have u18 : ¬v362 := by
      rcases c252 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd a u10
    have u19 : v290 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u17
    have u20 : v306 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd u16 a
    have u21 : v275 := by
      rcases c555 with a|a
      · exact a
      · exact absurd a u17
    have u22 : v250 := by
      rcases c549 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
    have u23 : v305 := by
      rcases c251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u17
    have u24 : v364 := by
      rcases c255 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
    have u25 : v308 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u20 a
      · exact a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd u16 a
    have u26 : v292 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u20 a
      · exact absurd u16 a
    have u27 : ¬v249 := by
      rcases c414 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact absurd a u17
    have u28 : ¬v279 := by
      rcases c310 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u22 a
    have u29 : ¬v280 := by
      rcases c553 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u25 a
    have u30 : v251 := by
      rcases c418 with a|a|a|a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd u25 a
      · exact a
    have u31 : ¬v304 := by
      rcases c195 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact absurd a u27
      · exact absurd a n0
    have u32 : v246 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u30 a
      · exact absurd u9 a
      · exact absurd u25 a
      · exact absurd a n0
    have u33 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u29
    have u34 : v208 := by
      rcases c571 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u29
    have u35 : v278 := by
      rcases c588 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd u24 a
    have u36 : v245 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd u30 a
    have u37 : ¬v265 := by
      rcases c428 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u32 a
      · exact a
      · exact absurd a n0
    have u38 : ¬v207 := by
      rcases c385 with a|a|a|a
      · exact absurd u34 a
      · exact absurd a u29
      · exact a
      · exact absurd u33 a
    have u39 : v229 := by
      rcases c566 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u37
    have u40 : ¬v257 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u24 a
      · exact absurd u35 a
      · exact absurd a u28
      · exact absurd a u11
    have u41 : ¬v242 := by
      rcases c565 with a|a
      · exact a
      · exact absurd u35 a
    have u42 : v361 := by
      rcases c231 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd u35 a
      · exact absurd u21 a
      · exact absurd u24 a
    have u43 : v206 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u41
      · exact absurd u35 a
    have u44 : ¬v202 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u34 a
      · exact absurd a u37
    have u45 : ¬v215 := by
      rcases c147 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u24 a
      · exact absurd a u41
      · exact absurd u20 a
      · exact absurd u25 a
    have u46 : ¬v199 := by
      rcases c593 with a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u33 a
      · exact absurd u24 a
    have u47 : v363 := by
      rcases c510 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u42 a
      · exact absurd u24 a
    have u48 : v200 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u43 a
      · exact absurd u22 a
      · exact absurd u35 a
      · exact absurd a u38
    have u49 : ¬v277 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u24 a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u18
    have u50 : ¬v240 := by
      rcases c166 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u24 a
      · exact absurd u33 a
      · exact absurd u42 a
      · exact absurd a u41
    have u51 : ¬v263 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u32 a
      · exact absurd u22 a
      · exact absurd u43 a
      · exact absurd a u44
    have u52 : ¬v344 := by
      rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd a u44
      · exact absurd a u38
      · exact absurd a u45
      · exact absurd u39 a
      · exact absurd u36 a
      · exact absurd a u51
      · exact absurd a u37
      · exact absurd u35 a
      · exact absurd a u5
      · exact absurd u16 a
      · exact absurd u26 a
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd u24 a
    have u53 : v205 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u21 a
      · exact absurd u34 a
      · exact absurd u43 a
      · exact absurd a u28
    have u54 : v228 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u25 a
      · exact absurd u26 a
      · exact absurd u33 a
      · exact absurd a u45
    have u55 : ¬v329 := by
      rcases c248 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u9 a
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd u25 a
    have u56 : ¬v313 := by
      rcases c246 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd u26 a
    have u57 : ¬v264 := by
      rcases c188 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u9 a
      · exact absurd u26 a
      · exact absurd u32 a
      · exact absurd a u37
    have u58 : v222 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd u54 a
      · exact absurd a u56
      · exact absurd u16 a
      · exact absurd u26 a
      · exact absurd a u45
      · exact a
    have u59 : ¬v258 := by
      rcases c169 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd a u56
      · exact absurd u16 a
      · exact absurd u26 a
      · exact absurd u30 a
      · exact a
    have u60 : v223 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u33 a
      · exact absurd a u55
    have u61 : ¬v201 := by
      rcases c62 with a|a|a|a|a|a
      · exact absurd a u59
      · exact a
      · exact absurd u30 a
      · exact absurd u36 a
      · exact absurd a u38
      · exact absurd u48 a
    have u62 : v209 := by
      rcases c499 with a|a|a|a
      · exact absurd a u61
      · exact a
      · exact absurd u36 a
      · exact absurd u48 a
    have u63 : ¬v217 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd u60 a
      · exact absurd a u13
    have u64 : ¬v213 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd a u27
      · exact absurd u36 a
      · exact absurd u48 a
      · exact absurd u6 a
    have u65 : v210 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd a u63
      · exact absurd u54 a
      · exact absurd a u45
      · exact absurd u62 a
    have u66 : ¬v216 := by
      rcases c137 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u33 a
      · exact absurd u62 a
      · exact absurd u60 a
      · exact absurd a u45
    have u67 : ¬v221 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd u62 a
      · exact absurd u60 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u68 : v239 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a u67
      · exact absurd a u40
      · exact absurd u12 a
      · exact absurd u21 a
      · exact absurd u43 a
      · exact a
    have u69 : ¬v243 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a u67
      · exact absurd u60 a
      · exact absurd u34 a
      · exact absurd u43 a
      · exact a
      · exact absurd a u61
    have u70 : ¬v198 := by
      rcases c602 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u68 a
      · exact absurd u36 a
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd u21 a
      · exact absurd a u49
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u55
      · exact absurd a u18
      · exact absurd u24 a
    have u71 : ¬v227 := by
      rcases c148 with a|a|a|a|a|a
      · exact absurd a u69
      · exact absurd u60 a
      · exact absurd u39 a
      · exact a
      · exact absurd a u67
      · exact absurd a u63
    have u72 : ¬v154 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd a u69
      · exact absurd u24 a
      · exact absurd a u70
      · exact absurd a u46
      · exact absurd u33 a
    have u73 : v153 := by
      rcases c346 with a|a|a|a
      · exact a
      · exact absurd a u72
      · exact absurd u33 a
      · exact absurd a u46
    have u74 : ¬v146 := by
      rcases c15 with a|a|a|a|a|a
      · exact a
      · exact absurd a u72
      · exact absurd u33 a
      · exact absurd u73 a
      · exact absurd a u45
      · exact absurd a u66
    have u75 : ¬v152 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd a u72
      · exact absurd u33 a
      · exact absurd u73 a
      · exact absurd a u41
      · exact absurd a u69
    have u76 : v195 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd u33 a
      · exact absurd u47 a
      · exact absurd a u46
      · exact absurd a u50
    have u77 : v148 := by
      rcases c24 with a|a|a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd u33 a
      · exact absurd u39 a
      · exact absurd u54 a
      · exact absurd a u72
    have u78 : v151 := by
      rcases c589 with a|a|a
      · exact a
      · exact absurd a u75
      · exact absurd u68 a
    have u79 : ¬v182 := by
      rcases c286 with a|a|a|a
      · exact a
      · exact absurd u77 a
      · exact absurd a u75
      · exact absurd a u71
    have u80 : v168 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd u76 a
      · exact absurd u78 a
      · exact absurd a u64
      · exact absurd a u50
      · exact absurd a u31
    have u81 : v145 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd u78 a
      · exact absurd u53 a
      · exact absurd u43 a
      · exact absurd u68 a
      · exact absurd a u75
    have u82 : v165 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u65 a
      · exact absurd a u79
      · exact absurd a u71
      · exact absurd u77 a
    have u83 : v155 := by
      rcases c496 with a|a|a|a
      · exact a
      · exact absurd u81 a
      · exact absurd u48 a
      · exact absurd a u74
    rcases c37 with a|a|a|a|a|a
    · exact absurd u83 a
    · exact absurd u80 a
    · exact absurd u19 a
    · exact absurd u32 a
    · exact absurd u82 a
    · exact absurd a u27
  have c604 : v265 ∨ ¬v252 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v246 := by
      rcases c307 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c560 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n2 a
  have c605 : ¬v252 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v265 := by
      rcases c550 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c604 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c606 : ¬v315 ∨ v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v252 := by
      rcases c603 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v282 := by
      rcases c525 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    have u3 : ¬v293 := by
      rcases c605 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v281 := by
      rcases c542 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v287 := by
      rcases c540 with a|a
      · exact absurd a u4
      · exact a
    rcases c567 with a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd u5 a
  have c607 : ¬v315 := by
    by_contra hc
    have u1 : v294 := by
      rcases c606 with a|a
      · exact absurd hc a
      · exact a
    rcases c524 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c608 : ¬v308 ∨ ¬v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c311 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c425 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c609 : v308 ∨ ¬v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c421 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
    rcases c424 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n0
  have c610 : v280 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v308 := by
      rcases c608 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c609 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
  have c611 : ¬v287 ∨ v293 ∨ ¬v314 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v281 := by
      rcases c567 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
    rcases c494 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
  have c612 : ¬v327 ∨ ¬v286 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v285 := by
      rcases c537 with a|a
      · exact absurd n0 a
      · exact a
    rcases c486 with a|a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c613 : v285 ∨ v286 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v327 := by
      rcases c537 with a|a
      · exact a
      · exact absurd a n0
    rcases c534 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c614 : ¬v285 ∨ v286 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v327 := by
      rcases c482 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c323 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
  have c615 : v286 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v285 := by
      rcases c613 with a|a
      · exact a
      · exact absurd a n0
    rcases c614 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c616 : ¬v308 ∨ ¬v252 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c422 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c427 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c617 : ¬v285 ∨ ¬v286 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v327 := by
      rcases c484 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c483 with a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c618 : ¬v207 ∨ v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c296 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c373 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd n2 a
  have c619 : ¬v244 ∨ v207 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v208 := by
      rcases c379 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c381 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c620 : v244 ∨ v207 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c299 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    rcases c377 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c621 : ¬v280 ∨ v207 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v244 := by
      rcases c619 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c620 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c622 : v251 ∨ v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c418 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c559 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c623 : ¬v275 ∨ v250 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v249 := by
      rcases c407 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
    rcases c411 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c624 : ¬v275 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v303 := by
      rcases c623 with a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
    rcases c549 with a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
  have c625 : ¬v324 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := c607
    have u2 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v320 := by
      rcases c527 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v284 := by
      rcases c533 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
    have u5 : v299 := by
      rcases c460 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact absurd u2 a
    rcases c462 with a|a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c626 : ¬v303 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := c607
    have u2 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v320 := by
      rcases c527 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v324 := by
      rcases c625 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v284 := by
      rcases c465 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
    have u6 : v299 := by
      rcases c460 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact absurd u2 a
    rcases c462 with a|a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c627 : v250 ∨ ¬v251 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v306 := by
      rcases c416 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    have u3 : v286 := by
      rcases c615 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v327 := by
      rcases c612 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u5 : ¬v285 := by
      rcases c485 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact a
      · exact absurd u2 a
    have u6 : v303 := by
      rcases c555 with a|a
      · exact absurd a u1
      · exact a
    rcases c626 with a|a
    · exact absurd u6 a
    · exact absurd a u5
  have c628 : ¬v284 := by
    by_contra hc
    have u1 : ¬v315 := c607
    have u2 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v320 := by
      rcases c527 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v299 := by
      rcases c460 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd hc a
      · exact absurd u2 a
    rcases c462 with a|a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd hc a
    · exact absurd u4 a
  have c629 : v324 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := c628
    have u2 : ¬v303 := by
      rcases c465 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
    rcases c463 with a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
  have c630 : v285 := by
    by_contra hc
    have u1 : ¬v284 := c628
    have u2 : ¬v324 := by
      rcases c533 with a|a|a
      · exact absurd a hc
      · exact absurd a u1
      · exact a
    rcases c629 with a|a
    · exact absurd a u2
    · exact absurd a hc
  have c631 : ¬v306 ∨ ¬v286 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v285 := c630
    have u2 : ¬v327 := by
      rcases c612 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c485 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd n0 a
  have c632 : ¬v306 := by
    by_contra hc
    have u1 : v286 := by
      rcases c615 with a|a
      · exact a
      · exact absurd hc a
    rcases c631 with a|a
    · exact absurd hc a
    · exact absurd u1 a
  have c633 : v275 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := c628
    have u2 : v285 := c630
    have u3 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u1
    have u5 : v249 := by
      rcases c309 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c413 with a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c634 : ¬v275 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := c628
    have u2 : v285 := c630
    have u3 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u1
    have u5 : v249 := by
      rcases c409 with a|a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c415 with a|a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c635 : ¬v250 := by
    by_contra hc
    have u1 : v275 := by
      rcases c633 with a|a
      · exact a
      · exact absurd hc a
    rcases c634 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c636 : v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c610 with a|a
      · exact absurd a n1
      · exact a
    rcases c622 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
  have c637 : ¬v278 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v250 := c635
    have u2 : ¬v251 := by
      rcases c627 with a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
    have u3 : ¬v207 := by
      rcases c618 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    have u4 : v280 := by
      rcases c636 with a|a
      · exact absurd a u2
      · exact a
    rcases c621 with a|a
    · exact absurd u4 a
    · exact absurd a u3
  have c638 : ¬v278 := by
    by_contra hc
    have u1 : v242 := by
      rcases c637 with a|a
      · exact absurd hc a
      · exact a
    rcases c565 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c639 : v242 := by
    by_contra hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v206 := by
      rcases c372 with a|a|a|a
      · exact absurd a u1
      · exact absurd a hc
      · exact absurd u2 a
      · exact a
    rcases c368 with a|a|a|a
    · exact absurd a u1
    · exact absurd a hc
    · exact absurd u2 a
    · exact absurd a u3
  have c640 : ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c616 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c553 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c641 : v251 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := c628
    have u2 : v285 := c630
    have u3 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u1
    have u5 : ¬v306 := c632
    have u6 : ¬v250 := c635
    have u7 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u6
    have u8 : ¬v278 := c638
    have u9 : ¬v361 := by
      rcases c193 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u10 : v280 := by
      rcases c636 with a|a
      · exact absurd a n0
      · exact a
    have u11 : ¬v308 := by
      rcases c640 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v307 := by
      rcases c328 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
    have u13 : v252 := by
      rcases c419 with a|a|a|a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
    have u14 : ¬v362 := by
      rcases c268 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u9
    have u15 : v279 := by
      rcases c196 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd u10 a
    rcases c229 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd n1 a
  have c642 : ¬v308 := by
    by_contra hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v280 := by
      rcases c640 with a|a
      · exact a
      · exact absurd hc a
    have u4 : v244 := by
      rcases c570 with a|a
      · exact a
      · exact absurd a u3
    have u5 : ¬v208 := by
      rcases c385 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    rcases c571 with a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u3
  have c643 : ¬v251 ∨ ¬v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := c628
    have u2 : v285 := c630
    have u3 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u1
    have u5 : ¬v306 := c632
    have u6 : ¬v250 := c635
    have u7 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u6
    have u8 : ¬v278 := c638
    have u9 : ¬v361 := by
      rcases c193 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u10 : ¬v308 := c642
    have u11 : ¬v307 := by
      rcases c328 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd n1 a
    have u12 : ¬v362 := by
      rcases c268 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u9
    have u13 : ¬v279 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n1 a
    have u14 : v252 := by
      rcases c199 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
    have u15 : v280 := by
      rcases c588 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd n1 a
    rcases c426 with a|a|a|a
    · exact absurd u15 a
    · exact absurd a u10
    · exact absurd u14 a
    · exact absurd n0 a
  have c644 : ¬v364 := by
    by_contra hc
    have u1 : v251 := by
      rcases c641 with a|a
      · exact a
      · exact absurd hc a
    rcases c643 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c645 : v280 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v208 := by
      rcases c385 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd n1 a
    rcases c571 with a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n0
  have c646 : v280 := by
    by_contra hc
    have u1 : ¬v244 := by
      rcases c645 with a|a
      · exact absurd a hc
      · exact a
    rcases c570 with a|a
    · exact absurd a u1
    · exact absurd a hc
  have c647 : v154 ∨ v199 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v242 := c639
    have u4 : ¬v364 := c644
    have u5 : v280 := c646
    have u6 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd u5 a
    have u7 : v153 := by
      rcases c345 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
    rcases c349 with a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n0
  have c648 : ¬v154 ∨ v199 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v242 := c639
    have u4 : ¬v364 := c644
    have u5 : v280 := c646
    have u6 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd u5 a
    have u7 : v153 := by
      rcases c348 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u6
    rcases c351 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd u7 a
    · exact absurd a u6
  have c649 : v199 := by
    by_contra hc
    have u1 : ¬v154 := by
      rcases c648 with a|a
      · exact a
      · exact absurd a hc
    rcases c647 with a|a
    · exact absurd a u1
    · exact absurd a hc
  have c650 : ¬v151 ∨ ¬v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c339 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c341 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c651 : v202 := by
    by_contra hc
    have u1 : v285 := c630
    have u2 : ¬v306 := c632
    have u3 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
    have u4 : ¬v250 := c635
    have u5 : ¬v278 := c638
    have u6 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u5
    have u7 : v242 := c639
    have u8 : ¬v308 := c642
    have u9 : ¬v364 := c644
    have u10 : v280 := c646
    have u11 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd u10 a
    have u12 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u10 a
      · exact absurd a u8
    have u13 : ¬v208 := by
      rcases c384 with a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
    have u14 : v252 := by
      rcases c419 with a|a|a|a
      · exact absurd u10 a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
    have u15 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u16 : ¬v293 := by
      rcases c605 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v314 := by
      rcases c516 with a|a
      · exact absurd a u16
      · exact a
    have u18 : ¬v287 := by
      rcases c611 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u17 a
    have u19 : v281 := by
      rcases c540 with a|a
      · exact a
      · exact absurd a u18
    have u20 : ¬v246 := by
      rcases c170 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u19 a
      · exact absurd u14 a
      · exact absurd a u18
      · exact absurd a u16
    have u21 : v265 := by
      rcases c430 with a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd u14 a
      · exact a
    have u22 : v229 := by
      rcases c387 with a|a|a|a
      · exact absurd a hc
      · exact absurd a u13
      · exact a
      · exact absurd u21 a
    rcases c386 with a|a|a|a
    · exact absurd u22 a
    · exact absurd a u13
    · exact absurd u21 a
    · exact absurd a hc
  have c652 : ¬v343 ∨ ¬v209 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v285 := c630
    have u2 : ¬v306 := c632
    have u3 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
    have u4 : v327 := by
      rcases c481 with a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
    have u5 : ¬v250 := c635
    have u6 : ¬v278 := c638
    have u7 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u6
    have u8 : v257 := by
      rcases c178 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u2
    have u9 : v242 := c639
    have u10 : ¬v206 := by
      rcases c374 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd u7 a
    have u11 : ¬v308 := c642
    have u12 : ¬v364 := c644
    have u13 : v280 := c646
    have u14 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd u13 a
    have u15 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u13 a
      · exact absurd a u11
    have u16 : ¬v208 := by
      rcases c384 with a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
    have u17 : ¬v200 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u6
    have u18 : v252 := by
      rcases c419 with a|a|a|a
      · exact absurd u13 a
      · exact absurd a u11
      · exact a
      · exact absurd a u15
    have u19 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u20 : v215 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u2
    have u21 : ¬v293 := by
      rcases c605 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v279 := by
      rcases c196 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd u13 a
    have u23 : v314 := by
      rcases c516 with a|a
      · exact absurd a u21
      · exact a
    have u24 : ¬v287 := by
      rcases c611 with a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u23 a
    have u25 : v281 := by
      rcases c540 with a|a
      · exact a
      · exact absurd a u24
    have u26 : ¬v292 := by
      rcases c245 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd u25 a
      · exact absurd a u24
    have u27 : ¬v246 := by
      rcases c170 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact absurd a u24
      · exact absurd a u21
    have u28 : v265 := by
      rcases c430 with a|a|a|a
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd u18 a
      · exact a
    have u29 : v202 := c651
    have u30 : v263 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u22 a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd u28 a
    have u31 : ¬v201 := by
      rcases c498 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u19
    have u32 : v222 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd n1 a
    have u33 : v259 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u31
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd u18 a
    have u34 : ¬v329 := by
      rcases c153 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u12
    have u35 : ¬v253 := by
      rcases c91 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u8 a
      · exact absurd a u31
      · exact absurd u30 a
      · exact absurd a u10
    have u36 : ¬v258 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u15
    have u37 : ¬v313 := by
      rcases c205 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u35
      · exact absurd u23 a
      · exact a
      · exact absurd a u36
      · exact absurd a u34
    have u38 : ¬v344 := by
      rcases c247 with a|a|a|a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd u23 a
    have u39 : v342 := by
      rcases c240 with a|a|a|a|a|a
      · exact absurd a u37
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u26
    rcases c512 with a|a|a|a
    · exact absurd u39 a
    · exact absurd a u38
    · exact absurd n0 a
    · exact absurd a u12
  have c653 : v247 := by
    by_contra hc
    have u1 : ¬v315 := c607
    have u2 : ¬v282 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v294 := by
      rcases c517 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    have u5 : v320 := by
      rcases c527 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v284 := c628
    have u7 : ¬v299 := by
      rcases c458 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
    have u8 : v285 := c630
    have u9 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u6
    have u11 : ¬v306 := c632
    have u12 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v250 := c635
    have u14 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v249 := by
      rcases c405 with a|a|a|a
      · exact absurd a u13
      · exact absurd u10 a
      · exact a
      · exact absurd a u14
    have u16 : ¬v278 := c638
    have u17 : ¬v308 := c642
    have u18 : ¬v364 := c644
    have u19 : v280 := c646
    have u20 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v248 := by
      rcases c173 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u7
    have u23 : v266 := by
      rcases c397 with a|a|a|a
      · exact a
      · exact absurd a hc
      · exact absurd u4 a
      · exact absurd a u22
    rcases c398 with a|a|a|a
    · exact absurd a u22
    · exact absurd a hc
    · exact absurd u4 a
    · exact absurd u23 a
  have c654 : v230 ∨ v204 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := c607
    have u2 : ¬v282 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v294 := by
      rcases c517 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    have u5 : v320 := by
      rcases c527 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v284 := c628
    have u7 : ¬v299 := by
      rcases c458 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
    have u8 : v285 := c630
    have u9 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u6
    have u11 : ¬v306 := c632
    have u12 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v250 := c635
    have u14 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v249 := by
      rcases c405 with a|a|a|a
      · exact absurd a u13
      · exact absurd u10 a
      · exact a
      · exact absurd a u14
    have u16 : ¬v278 := c638
    have u17 : ¬v308 := c642
    have u18 : ¬v364 := c644
    have u19 : v280 := c646
    have u20 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v248 := by
      rcases c173 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u7
    have u23 : v247 := c653
    have u24 : ¬v266 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u4 a
      · exact absurd a u22
    have u25 : ¬v203 := by
      rcases c357 with a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c355 with a|a|a|a
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a n1
  have c655 : v204 ∨ v212 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := c607
    have u2 : ¬v282 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v294 := by
      rcases c517 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    have u5 : v320 := by
      rcases c527 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v284 := c628
    have u7 : ¬v299 := by
      rcases c458 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
    have u8 : v285 := c630
    have u9 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u6
    have u11 : ¬v306 := c632
    have u12 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v250 := c635
    have u14 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v249 := by
      rcases c405 with a|a|a|a
      · exact absurd a u13
      · exact absurd u10 a
      · exact a
      · exact absurd a u14
    have u16 : ¬v278 := c638
    have u17 : ¬v308 := c642
    have u18 : ¬v364 := c644
    have u19 : v280 := c646
    have u20 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd a u17
    have u21 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v248 := by
      rcases c173 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u7
    have u23 : v247 := c653
    have u24 : ¬v266 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u4 a
      · exact absurd a u22
    have u25 : v230 := by
      rcases c654 with a|a
      · exact a
      · exact absurd a n0
    rcases c76 with a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u25 a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u24
  have c656 : ¬v230 ∨ v149 ∨ ¬v150 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c334 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c287 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c657 : v209 ∨ ¬v154 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := c607
    have u2 : ¬v282 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v294 := by
      rcases c517 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    have u5 : v320 := by
      rcases c527 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v284 := c628
    have u7 : ¬v299 := by
      rcases c458 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
    have u8 : v285 := c630
    have u9 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u6
    have u11 : ¬v306 := c632
    have u12 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v250 := c635
    have u14 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v249 := by
      rcases c405 with a|a|a|a
      · exact absurd a u13
      · exact absurd u10 a
      · exact a
      · exact absurd a u14
    have u16 : ¬v278 := c638
    have u17 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u16
    have u18 : v242 := c639
    have u19 : ¬v206 := by
      rcases c374 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd u17 a
    have u20 : ¬v308 := c642
    have u21 : ¬v364 := c644
    have u22 : v280 := c646
    have u23 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd u22 a
    have u24 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u22 a
      · exact absurd a u20
    have u25 : ¬v208 := by
      rcases c384 with a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd u17 a
      · exact absurd u22 a
    have u26 : ¬v200 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u16
    have u27 : v252 := by
      rcases c419 with a|a|a|a
      · exact absurd u22 a
      · exact absurd a u20
      · exact a
      · exact absurd a u24
    have u28 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u29 : v215 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u24
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a u11
    have u30 : ¬v293 := by
      rcases c605 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v248 := by
      rcases c173 with a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u7
    have u32 : v314 := by
      rcases c516 with a|a
      · exact absurd a u30
      · exact a
    have u33 : v271 := by
      rcases c402 with a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd u15 a
      · exact absurd a u7
    have u34 : ¬v301 := by
      rcases c176 with a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u3 a
      · exact absurd a u31
      · exact absurd a u24
      · exact absurd a u12
    have u35 : ¬v287 := by
      rcases c611 with a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u32 a
    have u36 : v281 := by
      rcases c540 with a|a
      · exact a
      · exact absurd a u35
    have u37 : ¬v246 := by
      rcases c170 with a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u36 a
      · exact absurd u27 a
      · exact absurd a u35
      · exact absurd a u30
    have u38 : v265 := by
      rcases c430 with a|a|a|a
      · exact absurd a u37
      · exact absurd a u30
      · exact absurd u27 a
      · exact a
    have u39 : v199 := c649
    have u40 : v202 := c651
    have u41 : ¬v229 := by
      rcases c388 with a|a|a|a
      · exact absurd u40 a
      · exact a
      · exact absurd u38 a
      · exact absurd a u25
    have u42 : v247 := c653
    have u43 : ¬v266 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u4 a
      · exact absurd a u31
    have u44 : v297 := by
      rcases c189 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u4 a
      · exact absurd a u24
      · exact absurd a u31
      · exact absurd a u34
    have u45 : ¬v210 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd u36 a
      · exact absurd a u28
      · exact absurd a u37
    have u46 : v216 := by
      rcases c66 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd u27 a
      · exact absurd a u28
      · exact absurd a u35
    have u47 : ¬v214 := by
      rcases c133 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd u29 a
      · exact absurd a u12
      · exact absurd a u11
    have u48 : ¬v212 := by
      rcases c131 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd u29 a
      · exact absurd a u12
      · exact absurd a u34
    have u49 : v211 := by
      rcases c128 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a n0
      · exact absurd u44 a
      · exact absurd a u2
      · exact absurd a u12
    have u50 : ¬v153 := by
      rcases c352 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u39 a
      · exact absurd a u23
      · exact a
    have u51 : v217 := by
      rcases c125 with a|a|a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd u32 a
      · exact absurd u36 a
      · exact absurd a u41
      · exact absurd a u30
    have u52 : ¬v223 := by
      rcases c126 with a|a|a|a|a|a
      · exact absurd u46 a
      · exact a
      · exact absurd u32 a
      · exact absurd a u41
      · exact absurd a u35
      · exact absurd a u30
    have u53 : v146 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd u29 a
      · exact absurd n1 a
      · exact absurd a u50
      · exact absurd a u23
    have u54 : v201 := by
      rcases c64 with a|a|a|a|a|a
      · exact absurd u46 a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u25
      · exact a
      · exact absurd a u52
    have u55 : ¬v222 := by
      rcases c136 with a|a|a|a|a|a
      · exact absurd u46 a
      · exact absurd u29 a
      · exact absurd a n0
      · exact a
      · exact absurd a u52
      · exact absurd a u23
    have u56 : v227 := by
      rcases c72 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u47
      · exact a
      · exact absurd a u26
      · exact absurd u40 a
      · exact absurd a u45
    have u57 : ¬v239 := by
      rcases c82 with a|a|a|a|a|a
      · exact absurd a u47
      · exact absurd u10 a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
    have u58 : v204 := by
      rcases c655 with a|a
      · exact a
      · exact absurd a u48
    have u59 : ¬v197 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u18 a
      · exact absurd a u50
      · exact absurd a u23
      · exact absurd a u21
    have u60 : ¬v148 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd n1 a
      · exact absurd u53 a
      · exact absurd a u45
      · exact absurd a u41
    have u61 : ¬v205 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u15 a
      · exact absurd u33 a
      · exact absurd a u26
      · exact absurd a u31
    have u62 : ¬v203 := by
      rcases c75 with a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd u58 a
      · exact absurd u42 a
      · exact a
      · exact absurd a u31
      · exact absurd a u43
    have u63 : ¬v237 := by
      rcases c80 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u17 a
      · exact absurd u29 a
      · exact absurd a u26
      · exact absurd a u48
    have u64 : v152 := by
      rcases c343 with a|a|a|a
      · exact absurd a u59
      · exact a
      · exact absurd u18 a
      · exact absurd a u50
    have u65 : v235 := by
      rcases c362 with a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u33 a
      · exact absurd a u61
    have u66 : v230 := by
      rcases c356 with a|a|a|a
      · exact absurd a u62
      · exact absurd u58 a
      · exact a
      · exact absurd a u43
    have u67 : v233 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd u49 a
      · exact a
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd u29 a
      · exact absurd a u62
    have u68 : ¬v151 := by
      rcases c650 with a|a|a
      · exact a
      · exact absurd u64 a
      · exact absurd a u57
    have u69 : ¬v226 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u64 a
      · exact absurd a u60
      · exact absurd u56 a
      · exact a
      · exact absurd a u68
      · exact absurd a u57
    have u70 : ¬v220 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u54 a
      · exact absurd u51 a
      · exact absurd a u61
      · exact absurd a u69
    have u71 : v240 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a u61
      · exact a
      · exact absurd u17 a
      · exact absurd a u70
      · exact absurd a u55
      · exact absurd u54 a
    have u72 : v150 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd a u63
      · exact absurd u71 a
      · exact absurd a u68
      · exact absurd a u50
      · exact absurd u65 a
    have u73 : ¬v231 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u71 a
      · exact absurd u65 a
      · exact absurd u66 a
      · exact absurd a u63
    have u74 : v149 := by
      rcases c656 with a|a|a
      · exact absurd u66 a
      · exact a
      · exact absurd u72 a
    rcases c25 with a|a|a|a|a|a
    · exact absurd u74 a
    · exact absurd u67 a
    · exact absurd u71 a
    · exact absurd a u68
    · exact absurd a u50
    · exact absurd a u73
  have c658 : ¬v343 ∨ ¬v209 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    rcases c652 with a|a
    · exact absurd n0 a
    · exact absurd n1 a
  have c659 : v154 := by
    by_contra hc
    have u1 : ¬v278 := c638
    have u2 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v242 := c639
    have u4 : ¬v364 := c644
    have u5 : v280 := c646
    have u6 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd u5 a
    have u7 : v199 := c649
    have u8 : v153 := by
      rcases c347 with a|a|a|a
      · exact a
      · exact absurd a hc
      · exact absurd u7 a
      · exact absurd a u6
    rcases c288 with a|a|a|a
    · exact absurd a hc
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd u8 a
  have c660 : v239 := by
    by_contra hc
    have u1 : ¬v315 := c607
    have u2 : v283 := by
      rcases c529 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v320 := by
      rcases c527 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v284 := c628
    have u5 : ¬v299 := by
      rcases c458 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u6 : v285 := c630
    have u7 : ¬v324 := by
      rcases c545 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v303 := by
      rcases c467 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u4
    have u9 : ¬v306 := c632
    have u10 : ¬v286 := by
      rcases c617 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u9
    have u11 : v327 := by
      rcases c481 with a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd u6 a
    have u12 : ¬v250 := c635
    have u13 : ¬v275 := by
      rcases c624 with a|a
      · exact a
      · exact absurd a u12
    have u14 : v249 := by
      rcases c405 with a|a|a|a
      · exact absurd a u12
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
    have u15 : ¬v278 := c638
    have u16 : ¬v361 := by
      rcases c193 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
    have u17 : v207 := by
      rcases c599 with a|a
      · exact a
      · exact absurd a u15
    have u18 : v257 := by
      rcases c178 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
    have u19 : v242 := c639
    have u20 : ¬v206 := by
      rcases c374 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u19 a
      · exact absurd u17 a
    have u21 : ¬v308 := c642
    have u22 : ¬v364 := c644
    have u23 : v280 := c646
    have u24 : ¬v244 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd u23 a
    have u25 : ¬v251 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd u23 a
      · exact absurd a u21
    have u26 : ¬v208 := by
      rcases c384 with a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd u17 a
      · exact absurd u23 a
    have u27 : ¬v200 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u15
    have u28 : v252 := by
      rcases c419 with a|a|a|a
      · exact absurd u23 a
      · exact absurd a u21
      · exact a
      · exact absurd a u25
    have u29 : v304 := by
      rcases c190 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u9
    have u30 : ¬v245 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd u6 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u31 : v215 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u25
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u9
    have u32 : ¬v293 := by
      rcases c605 with a|a
      · exact absurd u28 a
      · exact a
    have u33 : v279 := by
      rcases c196 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd u23 a
    have u34 : ¬v248 := by
      rcases c173 with a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd u2 a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a u5
    have u35 : v314 := by
      rcases c516 with a|a
      · exact absurd a u32
      · exact a
    have u36 : v271 := by
      rcases c402 with a|a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
    have u37 : ¬v287 := by
      rcases c611 with a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u35 a
    have u38 : v281 := by
      rcases c540 with a|a
      · exact a
      · exact absurd a u37
    have u39 : ¬v246 := by
      rcases c170 with a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd u38 a
      · exact absurd u28 a
      · exact absurd a u37
      · exact absurd a u32
    have u40 : v265 := by
      rcases c430 with a|a|a|a
      · exact absurd a u39
      · exact absurd a u32
      · exact absurd u28 a
      · exact a
    have u41 : v199 := c649
    have u42 : v202 := c651
    have u43 : ¬v229 := by
      rcases c388 with a|a|a|a
      · exact absurd u42 a
      · exact a
      · exact absurd u40 a
      · exact absurd a u26
    have u44 : v263 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u33 a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd u40 a
    have u45 : v154 := c659
    have u46 : ¬v153 := by
      rcases c352 with a|a|a|a
      · exact absurd u45 a
      · exact absurd u41 a
      · exact absurd a u24
      · exact a
    have u47 : v209 := by
      rcases c657 with a|a
      · exact a
      · exact absurd u45 a
    have u48 : ¬v197 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u19 a
      · exact absurd a u46
      · exact absurd a u24
      · exact absurd a u22
    have u49 : ¬v170 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u41 a
      · exact absurd a u46
      · exact absurd a u24
      · exact absurd a u21
    have u50 : ¬v201 := by
      rcases c498 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u27
      · exact absurd a u30
    have u51 : ¬v343 := by
      rcases c658 with a|a
      · exact a
      · exact absurd u47 a
    have u52 : ¬v221 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u6 a
      · exact absurd u18 a
      · exact absurd u47 a
      · exact absurd a u30
    have u53 : v152 := by
      rcases c343 with a|a|a|a
      · exact absurd a u48
      · exact a
      · exact absurd u19 a
      · exact absurd a u46
    have u54 : v222 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u17 a
      · exact absurd a u27
      · exact absurd u31 a
      · exact absurd u47 a
    have u55 : v259 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u50
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd u28 a
    have u56 : ¬v307 := by
      rcases c186 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u51
      · exact a
      · exact absurd u28 a
      · exact absurd a u32
      · exact absurd u40 a
    have u57 : ¬v243 := by
      rcases c109 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u51
      · exact a
      · exact absurd a u26
      · exact absurd u40 a
      · exact absurd a u43
    have u58 : ¬v227 := by
      rcases c108 with a|a|a|a|a|a
      · exact absurd a u51
      · exact a
      · exact absurd u40 a
      · exact absurd u42 a
      · exact absurd a u43
      · exact absurd u44 a
    have u59 : ¬v291 := by
      rcases c184 with a|a|a|a|a|a
      · exact absurd a u51
      · exact a
      · exact absurd u40 a
      · exact absurd a u39
      · exact absurd a u32
      · exact absurd u44 a
    have u60 : v176 := by
      rcases c20 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u11 a
      · exact absurd u19 a
      · exact absurd a u52
      · exact absurd u53 a
    have u61 : v198 := by
      rcases c32 with a|a|a|a|a|a
      · exact absurd a u57
      · exact a
      · exact absurd u19 a
      · exact absurd a u48
      · exact absurd u53 a
      · exact absurd a u22
    have u62 : ¬v329 := by
      rcases c153 with a|a|a|a|a|a
      · exact absurd u54 a
      · exact absurd a u24
      · exact absurd u11 a
      · exact absurd u19 a
      · exact a
      · exact absurd a u22
    have u63 : v328 := by
      rcases c257 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd a u56
    have u64 : ¬v223 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd a u20
      · exact a
      · exact absurd a u26
      · exact absurd a u52
      · exact absurd a u50
    have u65 : v214 := by
      rcases c74 with a|a|a|a|a|a
      · exact absurd a u59
      · exact absurd a u20
      · exact absurd a u58
      · exact absurd u44 a
      · exact absurd a u12
      · exact a
    have u66 : v178 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u41 a
      · exact absurd a u62
      · exact absurd a u24
      · exact absurd a u64
    have u67 : v146 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd u19 a
      · exact absurd u31 a
      · exact absurd u53 a
      · exact absurd a u46
    have u68 : ¬v164 := by
      rcases c43 with a|a|a|a|a|a
      · exact absurd u66 a
      · exact a
      · exact absurd u6 a
      · exact absurd u60 a
      · exact absurd u63 a
      · exact absurd a u37
    have u69 : v147 := by
      rcases c497 with a|a|a|a
      · exact a
      · exact absurd a u68
      · exact absurd u47 a
      · exact absurd u67 a
    have u70 : v213 := by
      rcases c301 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a hc
      · exact absurd u65 a
    have u71 : v362 := by
      rcases c164 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd a hc
      · exact absurd u19 a
      · exact absurd a u16
      · exact a
      · exact absurd a u22
    have u72 : ¬v151 := by
      rcases c650 with a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd a hc
    have u73 : ¬v241 := by
      rcases c306 with a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd u71 a
      · exact absurd a hc
    have u74 : ¬v363 := by
      rcases c509 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u71 a
      · exact absurd a u22
    have u75 : v220 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u72
      · exact absurd u67 a
      · exact absurd u69 a
      · exact absurd u70 a
    have u76 : ¬v276 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u74
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd u23 a
    have u77 : ¬v195 := by
      rcases c47 with a|a|a|a|a|a
      · exact absurd a u74
      · exact a
      · exact absurd u29 a
      · exact absurd u41 a
      · exact absurd a u21
      · exact absurd a u49
    have u78 : v277 := by
      rcases c233 with a|a|a|a|a|a
      · exact absurd u71 a
      · exact a
      · exact absurd u23 a
      · exact absurd u33 a
      · exact absurd a u74
      · exact absurd a u22
    have u79 : v196 := by
      rcases c54 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u71 a
      · exact absurd u61 a
      · exact absurd a u74
      · exact absurd a u22
    have u80 : v240 := by
      rcases c163 with a|a|a|a|a|a
      · exact absurd a u73
      · exact absurd a u16
      · exact absurd u71 a
      · exact absurd a hc
      · exact a
      · exact absurd a u74
    have u81 : v235 := by
      rcases c130 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd u75 a
      · exact a
      · exact absurd u70 a
      · exact absurd a u4
      · exact absurd a u5
    have u82 : ¬v219 := by
      rcases c129 with a|a|a|a|a|a
      · exact a
      · exact absurd u75 a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd u47 a
      · exact absurd a u4
    have u83 : ¬v205 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd u78 a
      · exact absurd a u73
      · exact absurd u71 a
      · exact absurd a hc
      · exact a
      · exact absurd a u13
    have u84 : v256 := by
      rcases c213 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u78 a
      · exact absurd u18 a
      · exact absurd u55 a
      · exact absurd a u13
    have u85 : ¬v175 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u79 a
      · exact absurd u66 a
      · exact absurd u45 a
      · exact absurd u69 a
      · exact absurd a u72
    have u86 : v160 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u77
      · exact absurd a u76
      · exact absurd a u72
      · exact absurd u80 a
      · exact absurd a u83
      · exact a
    have u87 : v150 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd u81 a
      · exact absurd u69 a
      · exact absurd u75 a
      · exact absurd a u72
      · exact absurd a u82
    have u88 : ¬v190 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u86 a
      · exact absurd u3 a
      · exact absurd u36 a
      · exact absurd u84 a
      · exact absurd a u85
    rcases c335 with a|a|a|a
    · exact absurd a u88
    · exact absurd u87 a
    · exact absurd a u72
    · exact absurd u81 a
  have u1 : ¬v284 := c628
  have u2 : v285 := c630
  have u3 : ¬v324 := by
    rcases c545 with a|a
    · exact a
    · exact absurd u2 a
  have u4 : v303 := by
    rcases c467 with a|a|a|a
    · exact a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u1
  have u5 : ¬v306 := c632
  have u6 : ¬v250 := c635
  have u7 : ¬v275 := by
    rcases c624 with a|a
    · exact a
    · exact absurd a u6
  have u8 : ¬v278 := c638
  have u9 : ¬v361 := by
    rcases c193 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u8
    · exact a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
  have u10 : v207 := by
    rcases c599 with a|a
    · exact a
    · exact absurd a u8
  have u11 : v242 := c639
  have u12 : ¬v364 := c644
  have u13 : v280 := c646
  have u14 : ¬v244 := by
    rcases c121 with a|a|a|a|a|a
    · exact absurd a u12
    · exact a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd u13 a
  have u15 : v199 := c649
  have u16 : v154 := c659
  have u17 : ¬v153 := by
    rcases c352 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd a u14
    · exact a
  have u18 : ¬v197 := by
    rcases c34 with a|a|a|a|a|a
    · exact a
    · exact absurd u15 a
    · exact absurd u11 a
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u12
  have u19 : v152 := by
    rcases c343 with a|a|a|a
    · exact absurd a u18
    · exact a
    · exact absurd u11 a
    · exact absurd a u17
  have u20 : v239 := c660
  have u21 : ¬v194 := by
    rcases c29 with a|a|a|a|a|a
    · exact a
    · exact absurd u20 a
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u9
  have u22 : v240 := by
    rcases c305 with a|a|a|a
    · exact absurd u20 a
    · exact a
    · exact absurd u11 a
    · exact absurd a u9
  have u23 : ¬v151 := by
    rcases c340 with a|a|a|a
    · exact absurd u19 a
    · exact a
    · exact absurd u20 a
    · exact absurd a u21
  rcases c28 with a|a|a|a|a|a
  · exact absurd u22 a
  · exact absurd u20 a
  · exact absurd u11 a
  · exact absurd u19 a
  · exact absurd a u23
  · exact absurd a u17
