import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 242-clause unsatisfiable core of orbit_002, contradictory.
114 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem core002_false
    (v145 v146 v148 v149 v150 v151 v152 v153 v154 v155 v161 v162 v163 v168 v170 v171 v179 v188 v190 v192 v194 v195 v196 v197 v198 v199 v200 v202 v203 v204 v205 v206 v207 v208 v211 v212 v216 v224 v225 v229 v230 v231 v233 v234 v235 v236 v237 v238 v239 v240 v241 v242 v243 v244 v246 v247 v248 v249 v250 v251 v252 v260 v265 v266 v268 v269 v271 v272 v274 v275 v276 v278 v279 v280 v288 v293 v294 v297 v299 v300 v301 v303 v304 v307 v308 v345 v346 v347 v348 v349 v350 v352 v354 v355 v356 v357 v358 v360 v361 v362 v363 v364 : Prop)
    (c1 : ¬v146 ∨ ¬v145 ∨ v149 ∨ ¬v203 ∨ ¬v200 ∨ v211)
    (c2 : ¬v146 ∨ v216 ∨ ¬v145 ∨ ¬v208 ∨ v154 ∨ ¬v200)
    (c3 : ¬v224 ∨ v148 ∨ ¬v202 ∨ v145 ∨ v149 ∨ v203)
    (c4 : ¬v148 ∨ v145 ∨ ¬v154 ∨ ¬v202 ∨ v208 ∨ v229)
    (c5 : ¬v149 ∨ v145 ∨ v151 ∨ v203 ∨ v205 ∨ v231)
    (c6 : ¬v150 ∨ v235 ∨ ¬v205 ∨ ¬v145 ∨ v204 ∨ ¬v151)
    (c7 : ¬v145 ∨ v205 ∨ ¬v152 ∨ v151 ∨ v206 ∨ v239)
    (c8 : ¬v205 ∨ v145 ∨ ¬v239 ∨ ¬v151 ∨ ¬v206 ∨ v152)
    (c9 : ¬v161 ∨ ¬v206 ∨ ¬v239 ∨ ¬v275 ∨ v152 ∨ v194)
    (c10 : ¬v240 ∨ ¬v205 ∨ ¬v153 ∨ ¬v151 ∨ ¬v145 ∨ v207)
    (c11 : v241 ∨ ¬v205 ∨ ¬v145 ∨ v154 ∨ ¬v151 ∨ ¬v208)
    (c12 : ¬v145 ∨ v154 ∨ ¬v244 ∨ ¬v208 ∨ v153 ∨ v207)
    (c13 : ¬v195 ∨ v168 ∨ ¬v153 ∨ ¬v151 ∨ ¬v170 ∨ v146)
    (c14 : v146 ∨ v171 ∨ ¬v151 ∨ v154 ∨ v196 ∨ v168)
    (c15 : v150 ∨ v148 ∨ ¬v229 ∨ v154 ∨ v225 ∨ v238)
    (c16 : ¬v168 ∨ ¬v155 ∨ ¬v251 ∨ ¬v170 ∨ v249 ∨ v304)
    (c17 : ¬v155 ∨ v163 ∨ ¬v250 ∨ v161 ∨ v252 ∨ v279)
    (c18 : ¬v171 ∨ ¬v155 ∨ ¬v308 ∨ ¬v251 ∨ ¬v170 ∨ v252)
    (c19 : ¬v162 ∨ ¬v269 ∨ ¬v278 ∨ ¬v197 ∨ ¬v352 ∨ v188)
    (c20 : v198 ∨ v161 ∨ ¬v362 ∨ v194 ∨ ¬v275 ∨ v279)
    (c21 : v195 ∨ ¬v363 ∨ v162 ∨ ¬v276 ∨ v199 ∨ v280)
    (c22 : ¬v163 ∨ ¬v198 ∨ ¬v364 ∨ v199 ∨ v279 ∨ v280)
    (c23 : v170 ∨ v188 ∨ ¬v308 ∨ v199 ∨ v297 ∨ v354)
    (c24 : ¬v188 ∨ ¬v352 ∨ ¬v197 ∨ ¬v192 ∨ v347 ∨ v358)
    (c25 : v357 ∨ ¬v196 ∨ ¬v190 ∨ v356 ∨ v195 ∨ v363)
    (c26 : ¬v216 ∨ v229 ∨ ¬v208 ∨ ¬v293 ∨ v252 ∨ v265)
    (c27 : ¬v200 ∨ ¬v266 ∨ v203 ∨ ¬v248 ∨ v204 ∨ v247)
    (c28 : v200 ∨ ¬v203 ∨ ¬v247 ∨ ¬v204 ∨ v248 ∨ v266)
    (c29 : ¬v211 ∨ ¬v212 ∨ ¬v248 ∨ ¬v200 ∨ v247 ∨ v294)
    (c30 : v205 ∨ v204 ∨ ¬v248 ∨ ¬v200 ∨ v249 ∨ v271)
    (c31 : ¬v205 ∨ v200 ∨ ¬v271 ∨ ¬v204 ∨ ¬v249 ∨ v248)
    (c32 : v212 ∨ ¬v299 ∨ ¬v248 ∨ v235 ∨ v204 ∨ v271)
    (c33 : v200 ∨ ¬v206 ∨ ¬v250 ∨ ¬v251 ∨ ¬v278 ∨ v207)
    (c34 : ¬v200 ∨ v206 ∨ ¬v279 ∨ ¬v252 ∨ v208 ∨ v250)
    (c35 : v200 ∨ ¬v206 ∨ ¬v208 ∨ ¬v250 ∨ v252 ∨ v279)
    (c36 : ¬v216 ∨ ¬v307 ∨ ¬v208 ∨ v243 ∨ v252 ∨ v279)
    (c37 : v202 ∨ v224 ∨ ¬v208 ∨ ¬v203 ∨ ¬v234 ∨ ¬v229)
    (c38 : ¬v225 ∨ ¬v229 ∨ ¬v208 ∨ v202 ∨ v204 ∨ v238)
    (c39 : ¬v231 ∨ ¬v235 ∨ ¬v230 ∨ ¬v204 ∨ v203 ∨ v205)
    (c40 : ¬v345 ∨ v230 ∨ v204 ∨ ¬v266 ∨ v235 ∨ v271)
    (c41 : ¬v346 ∨ v230 ∨ v204 ∨ ¬v266 ∨ v236 ∨ v272)
    (c42 : ¬v233 ∨ v230 ∨ ¬v203 ∨ v204 ∨ v207 ∨ ¬v237)
    (c43 : v234 ∨ v230 ∨ ¬v208 ∨ v204 ∨ ¬v203 ∨ v238)
    (c44 : ¬v348 ∨ v230 ∨ v204 ∨ ¬v266 ∨ v238 ∨ v274)
    (c45 : ¬v236 ∨ v235 ∨ v204 ∨ ¬v239 ∨ ¬v206 ∨ ¬v205)
    (c46 : ¬v272 ∨ v204 ∨ ¬v206 ∨ ¬v275 ∨ ¬v205 ∨ v271)
    (c47 : v237 ∨ v235 ∨ ¬v205 ∨ v204 ∨ v240 ∨ v207)
    (c48 : ¬v358 ∨ v236 ∨ ¬v206 ∨ ¬v278 ∨ v242 ∨ v272)
    (c49 : v361 ∨ ¬v206 ∨ ¬v239 ∨ ¬v275 ∨ v242 ∨ ¬v278)
    (c50 : ¬v362 ∨ ¬v275 ∨ ¬v239 ∨ ¬v243 ∨ ¬v206 ∨ v279)
    (c51 : v206 ∨ ¬v207 ∨ ¬v279 ∨ ¬v278 ∨ ¬v280 ∨ v208)
    (c52 : ¬v243 ∨ ¬v206 ∨ ¬v279 ∨ ¬v242 ∨ v278 ∨ v364)
    (c53 : ¬v243 ∨ ¬v244 ∨ ¬v279 ∨ v208 ∨ v280 ∨ v364)
    (c54 : ¬v297 ∨ v347 ∨ v230 ∨ v211 ∨ v294 ∨ v233)
    (c55 : ¬v354 ∨ v347 ∨ v230 ∨ v233 ∨ ¬v234 ∨ v348)
    (c56 : ¬v238 ∨ ¬v237 ∨ ¬v244 ∨ ¬v241 ∨ v235 ∨ v240)
    (c57 : v272 ∨ v268 ∨ ¬v248 ∨ v247 ∨ ¬v266 ∨ ¬v250)
    (c58 : ¬v304 ∨ ¬v301 ∨ ¬v299 ∨ ¬v251 ∨ ¬v248 ∨ v249)
    (c59 : v307 ∨ ¬v362 ∨ v303 ∨ v279 ∨ ¬v250 ∨ ¬v275)
    (c60 : v279 ∨ v278 ∨ ¬v280 ∨ v251 ∨ ¬v252 ∨ v250)
    (c61 : ¬v250 ∨ ¬v278 ∨ ¬v251 ∨ ¬v279 ∨ v252 ∨ v280)
    (c62 : v349 ∨ v346 ∨ v272 ∨ ¬v275 ∨ ¬v268 ∨ v355)
    (c63 : v269 ∨ ¬v352 ∨ ¬v266 ∨ ¬v268 ∨ v346 ∨ v347)
    (c64 : v352 ∨ v346 ∨ ¬v278 ∨ v272 ∨ ¬v268 ∨ v358)
    (c65 : v276 ∨ ¬v350 ∨ ¬v361 ∨ ¬v278 ∨ ¬v352 ∨ ¬v269)
    (c66 : ¬v361 ∨ ¬v362 ∨ ¬v278 ∨ v364 ∨ v279 ∨ ¬v275)
    (c67 : v300 ∨ v345 ∨ ¬v299 ∨ v294 ∨ v346 ∨ v355)
    (c68 : v301 ∨ ¬v300 ∨ v294 ∨ v346 ∨ v347 ∨ v358)
    (c69 : v350 ∨ ¬v349 ∨ v345 ∨ v346 ∨ v347 ∨ ¬v352)
    (c70 : v192 ∨ ¬v237 ∨ ¬v153 ∨ v150)
    (c71 : ¬v194 ∨ v152 ∨ ¬v151 ∨ v239)
    (c72 : ¬v239 ∨ v151 ∨ ¬v152 ∨ v194)
    (c73 : ¬v197 ∨ ¬v152 ∨ v242 ∨ v153)
    (c74 : v152 ∨ v197 ∨ ¬v153 ∨ ¬v242)
    (c75 : v154 ∨ ¬v199 ∨ ¬v153 ∨ v244)
    (c76 : ¬v154 ∨ v199 ∨ ¬v244 ∨ v153)
    (c77 : ¬v230 ∨ ¬v203 ∨ v204 ∨ v266)
    (c78 : v230 ∨ ¬v266 ∨ v203 ∨ ¬v204)
    (c79 : ¬v274 ∨ v238 ∨ ¬v208 ∨ v204)
    (c80 : v205 ∨ ¬v206 ∨ v239 ∨ ¬v275)
    (c81 : v278 ∨ ¬v206 ∨ v207 ∨ ¬v242)
    (c82 : v206 ∨ ¬v207 ∨ ¬v278 ∨ v242)
    (c83 : v208 ∨ ¬v207 ∨ v280 ∨ ¬v244)
    (c84 : v207 ∨ ¬v208 ∨ ¬v280 ∨ v244)
    (c85 : ¬v356 ∨ ¬v237 ∨ v235 ∨ v240)
    (c86 : v360 ∨ v238 ∨ ¬v244 ∨ ¬v237)
    (c87 : v243 ∨ ¬v244 ∨ ¬v242 ∨ v364)
    (c88 : ¬v265 ∨ ¬v246 ∨ v252 ∨ v293)
    (c89 : ¬v293 ∨ ¬v252 ∨ v246 ∨ v265)
    (c90 : v294 ∨ v248 ∨ ¬v247 ∨ ¬v266)
    (c91 : ¬v294 ∨ v266 ∨ v247 ∨ ¬v248)
    (c92 : ¬v271 ∨ v249 ∨ ¬v248 ∨ v299)
    (c93 : ¬v299 ∨ ¬v249 ∨ v248 ∨ v271)
    (c94 : ¬v275 ∨ v250 ∨ ¬v249 ∨ v303)
    (c95 : ¬v303 ∨ v249 ∨ ¬v250 ∨ v275)
    (c96 : ¬v280 ∨ v252 ∨ ¬v251 ∨ v308)
    (c97 : ¬v252 ∨ ¬v308 ∨ v251 ∨ v280)
    (c98 : ¬v364 ∨ ¬v279 ∨ v280 ∨ v278)
    (c99 : v179 ∨ v148 ∨ v149 ∨ v224)
    (c100 : ¬v179 ∨ v148 ∨ v149 ∨ v224)
    (c101 : v179 ∨ ¬v224 ∨ ¬v149 ∨ ¬v148)
    (c102 : ¬v179 ∨ ¬v224 ∨ ¬v149 ∨ ¬v148)
    (c103 : v190 ∨ v150 ∨ ¬v151 ∨ v235)
    (c104 : v194 ∨ v152 ∨ v151 ∨ v239)
    (c105 : v194 ∨ v152 ∨ ¬v239 ∨ v151)
    (c106 : ¬v194 ∨ v151 ∨ v152 ∨ v239)
    (c107 : ¬v194 ∨ v152 ∨ ¬v239 ∨ v151)
    (c108 : ¬v194 ∨ v151 ∨ ¬v152 ∨ ¬v239)
    (c109 : v194 ∨ v239 ∨ v152 ∨ ¬v151)
    (c110 : ¬v194 ∨ v152 ∨ ¬v239 ∨ ¬v151)
    (c111 : v194 ∨ ¬v151 ∨ ¬v152 ∨ v239)
    (c112 : v194 ∨ ¬v151 ∨ ¬v152 ∨ ¬v239)
    (c113 : ¬v194 ∨ v239 ∨ ¬v151 ∨ ¬v152)
    (c114 : ¬v194 ∨ ¬v239 ∨ ¬v152 ∨ ¬v151)
    (c115 : v197 ∨ v153 ∨ v242 ∨ v152)
    (c116 : v197 ∨ v152 ∨ ¬v242 ∨ v153)
    (c117 : v152 ∨ v153 ∨ ¬v197 ∨ ¬v242)
    (c118 : v152 ∨ v197 ∨ ¬v153 ∨ v242)
    (c119 : v152 ∨ ¬v242 ∨ ¬v153 ∨ ¬v197)
    (c120 : v197 ∨ ¬v152 ∨ v242 ∨ v153)
    (c121 : ¬v153 ∨ ¬v152 ∨ v242 ∨ v197)
    (c122 : ¬v153 ∨ ¬v152 ∨ ¬v242 ∨ v197)
    (c123 : ¬v153 ∨ ¬v152 ∨ ¬v197 ∨ v242)
    (c124 : ¬v152 ∨ ¬v153 ∨ ¬v242 ∨ ¬v197)
    (c125 : v199 ∨ v154 ∨ v153 ∨ v244)
    (c126 : v154 ∨ v153 ∨ ¬v199 ∨ v244)
    (c127 : v153 ∨ ¬v199 ∨ v154 ∨ ¬v244)
    (c128 : v199 ∨ ¬v154 ∨ v153 ∨ v244)
    (c129 : ¬v154 ∨ ¬v199 ∨ ¬v244 ∨ v153)
    (c130 : ¬v153 ∨ v154 ∨ v199 ∨ v244)
    (c131 : ¬v199 ∨ ¬v153 ∨ ¬v244 ∨ v154)
    (c132 : ¬v153 ∨ ¬v154 ∨ v199 ∨ v244)
    (c133 : ¬v154 ∨ ¬v153 ∨ ¬v244 ∨ v199)
    (c134 : ¬v154 ∨ ¬v153 ∨ ¬v199 ∨ v244)
    (c135 : ¬v154 ∨ ¬v153 ∨ ¬v244 ∨ ¬v199)
    (c136 : v230 ∨ v203 ∨ v204 ∨ v266)
    (c137 : ¬v230 ∨ v203 ∨ v204 ∨ v266)
    (c138 : v230 ∨ ¬v204 ∨ v203 ∨ v266)
    (c139 : ¬v204 ∨ v203 ∨ ¬v266 ∨ ¬v230)
    (c140 : v230 ∨ v204 ∨ ¬v203 ∨ v266)
    (c141 : v204 ∨ ¬v266 ∨ ¬v203 ∨ ¬v230)
    (c142 : ¬v203 ∨ ¬v204 ∨ ¬v266 ∨ v230)
    (c143 : ¬v230 ∨ ¬v204 ∨ ¬v203 ∨ ¬v266)
    (c144 : ¬v235 ∨ ¬v205 ∨ v271 ∨ v204)
    (c145 : v235 ∨ v205 ∨ ¬v204 ∨ ¬v271)
    (c146 : v206 ∨ v207 ∨ v242 ∨ v278)
    (c147 : v206 ∨ v207 ∨ v242 ∨ ¬v278)
    (c148 : v206 ∨ v278 ∨ v207 ∨ ¬v242)
    (c149 : v206 ∨ ¬v242 ∨ ¬v278 ∨ v207)
    (c150 : v206 ∨ v278 ∨ v242 ∨ ¬v207)
    (c151 : v206 ∨ ¬v207 ∨ ¬v278 ∨ ¬v242)
    (c152 : v278 ∨ v242 ∨ v207 ∨ ¬v206)
    (c153 : ¬v206 ∨ ¬v242 ∨ ¬v278 ∨ v207)
    (c154 : ¬v206 ∨ v278 ∨ v242 ∨ ¬v207)
    (c155 : ¬v206 ∨ ¬v207 ∨ v242 ∨ ¬v278)
    (c156 : v278 ∨ ¬v242 ∨ ¬v207 ∨ ¬v206)
    (c157 : ¬v242 ∨ ¬v207 ∨ ¬v278 ∨ ¬v206)
    (c158 : v207 ∨ v208 ∨ v280 ∨ v244)
    (c159 : v207 ∨ v244 ∨ ¬v280 ∨ v208)
    (c160 : v208 ∨ v207 ∨ v280 ∨ ¬v244)
    (c161 : v208 ∨ ¬v244 ∨ ¬v280 ∨ v207)
    (c162 : v207 ∨ ¬v208 ∨ v280 ∨ v244)
    (c163 : ¬v280 ∨ ¬v244 ∨ ¬v208 ∨ v207)
    (c164 : ¬v207 ∨ v244 ∨ v280 ∨ v208)
    (c165 : v208 ∨ ¬v244 ∨ ¬v280 ∨ ¬v207)
    (c166 : ¬v207 ∨ ¬v208 ∨ v244 ∨ v280)
    (c167 : ¬v207 ∨ ¬v208 ∨ ¬v280 ∨ v244)
    (c168 : ¬v208 ∨ ¬v207 ∨ v280 ∨ ¬v244)
    (c169 : ¬v280 ∨ ¬v244 ∨ ¬v208 ∨ ¬v207)
    (c170 : v202 ∨ ¬v265 ∨ ¬v229 ∨ v208)
    (c171 : v202 ∨ v229 ∨ v208 ∨ ¬v265)
    (c172 : ¬v202 ∨ ¬v229 ∨ ¬v265 ∨ v208)
    (c173 : ¬v229 ∨ ¬v202 ∨ ¬v208 ∨ v265)
    (c174 : v288 ∨ v260 ∨ v246 ∨ v247)
    (c175 : ¬v288 ∨ v247 ∨ v246 ∨ v260)
    (c176 : v288 ∨ ¬v260 ∨ v246 ∨ v247)
    (c177 : ¬v288 ∨ ¬v260 ∨ v246 ∨ v247)
    (c178 : v288 ∨ v260 ∨ ¬v246 ∨ ¬v247)
    (c179 : ¬v288 ∨ ¬v247 ∨ ¬v246 ∨ v260)
    (c180 : ¬v260 ∨ ¬v247 ∨ ¬v246 ∨ v288)
    (c181 : ¬v288 ∨ ¬v247 ∨ ¬v260 ∨ ¬v246)
    (c182 : v294 ∨ v248 ∨ v247 ∨ v266)
    (c183 : ¬v294 ∨ v248 ∨ v247 ∨ v266)
    (c184 : v294 ∨ ¬v266 ∨ v247 ∨ v248)
    (c185 : ¬v294 ∨ ¬v266 ∨ v247 ∨ v248)
    (c186 : v294 ∨ ¬v248 ∨ v247 ∨ v266)
    (c187 : ¬v294 ∨ ¬v266 ∨ v247 ∨ ¬v248)
    (c188 : ¬v294 ∨ ¬v266 ∨ ¬v247 ∨ v248)
    (c189 : v266 ∨ ¬v248 ∨ ¬v247 ∨ v294)
    (c190 : ¬v294 ∨ v266 ∨ ¬v247 ∨ ¬v248)
    (c191 : v294 ∨ ¬v266 ∨ ¬v248 ∨ ¬v247)
    (c192 : ¬v294 ∨ ¬v266 ∨ ¬v248 ∨ ¬v247)
    (c193 : v299 ∨ v248 ∨ v249 ∨ v271)
    (c194 : ¬v299 ∨ v249 ∨ v248 ∨ v271)
    (c195 : ¬v271 ∨ v248 ∨ v299 ∨ v249)
    (c196 : ¬v299 ∨ ¬v271 ∨ v248 ∨ v249)
    (c197 : ¬v249 ∨ v248 ∨ v299 ∨ v271)
    (c198 : v271 ∨ v249 ∨ ¬v248 ∨ v299)
    (c199 : ¬v271 ∨ v249 ∨ ¬v248 ∨ ¬v299)
    (c200 : v271 ∨ ¬v248 ∨ ¬v249 ∨ v299)
    (c201 : ¬v299 ∨ ¬v248 ∨ v271 ∨ ¬v249)
    (c202 : ¬v271 ∨ ¬v249 ∨ ¬v248 ∨ v299)
    (c203 : ¬v271 ∨ ¬v299 ∨ ¬v249 ∨ ¬v248)
    (c204 : v303 ∨ v250 ∨ v249 ∨ v275)
    (c205 : ¬v303 ∨ v249 ∨ v250 ∨ v275)
    (c206 : ¬v275 ∨ v303 ∨ v249 ∨ v250)
    (c207 : ¬v303 ∨ ¬v275 ∨ v249 ∨ v250)
    (c208 : v303 ∨ v249 ∨ ¬v250 ∨ v275)
    (c209 : ¬v303 ∨ ¬v275 ∨ v249 ∨ ¬v250)
    (c210 : v250 ∨ ¬v249 ∨ v275 ∨ v303)
    (c211 : ¬v303 ∨ ¬v275 ∨ ¬v249 ∨ v250)
    (c212 : v303 ∨ ¬v249 ∨ v275 ∨ ¬v250)
    (c213 : ¬v303 ∨ ¬v250 ∨ ¬v249 ∨ v275)
    (c214 : v303 ∨ ¬v275 ∨ ¬v249 ∨ ¬v250)
    (c215 : ¬v303 ∨ ¬v275 ∨ ¬v250 ∨ ¬v249)
    (c216 : v280 ∨ v308 ∨ v251 ∨ v252)
    (c217 : v252 ∨ v251 ∨ ¬v308 ∨ v280)
    (c218 : ¬v280 ∨ v252 ∨ v251 ∨ v308)
    (c219 : v252 ∨ ¬v280 ∨ v251 ∨ ¬v308)
    (c220 : ¬v252 ∨ v308 ∨ v251 ∨ v280)
    (c221 : ¬v308 ∨ ¬v280 ∨ ¬v252 ∨ v251)
    (c222 : v308 ∨ v252 ∨ v280 ∨ ¬v251)
    (c223 : ¬v308 ∨ ¬v251 ∨ ¬v280 ∨ v252)
    (c224 : ¬v252 ∨ v308 ∨ v280 ∨ ¬v251)
    (c225 : ¬v252 ∨ ¬v251 ∨ ¬v308 ∨ v280)
    (c226 : ¬v280 ∨ ¬v252 ∨ ¬v251 ∨ v308)
    (c227 : ¬v252 ∨ ¬v251 ∨ ¬v280 ∨ ¬v308)
    (c228 : ¬v293 ∨ ¬v265 ∨ v246 ∨ v252)
    (c229 : v293 ∨ ¬v265 ∨ v252 ∨ v246)
    (c230 : ¬v293 ∨ v265 ∨ v252 ∨ v246)
    (c231 : v293 ∨ v252 ∨ v246 ∨ v265)
    (c232 : ¬v293 ∨ ¬v246 ∨ v252 ∨ ¬v265)
    (c233 : v293 ∨ v265 ∨ v252 ∨ ¬v246)
    (c234 : v293 ∨ ¬v252 ∨ v246 ∨ v265)
    (c235 : ¬v293 ∨ ¬v252 ∨ ¬v265 ∨ ¬v246)
    (c236 : ¬v252 ∨ ¬v265 ∨ ¬v246 ∨ v293)
    (c237 : ¬v293 ∨ v265 ∨ ¬v252 ∨ ¬v246)
    (c238 : ¬v246 ∨ v265 ∨ ¬v252 ∨ v293)
    (c239 : v155 ∨ v146 ∨ ¬v145 ∨ ¬v200)
    (c240 : ¬v347 ∨ ¬v352 ∨ v346 ∨ v358)
    (c241 : ¬v355 ∨ v356 ∨ ¬v361 ∨ v358)
    (c242 : ¬v357 ∨ v356 ∨ v363 ∨ ¬v360)
    : False := by
  have c243 : ¬v247 ∨ ¬v246 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c179 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c178 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c244 : v251 ∨ v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v252 := by
      rcases c217 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c97 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c245 : v246 ∨ v252 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c229 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c228 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c246 : ¬v246 ∨ v252 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c232 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
    rcases c88 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c247 : ¬v265 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v246 := by
      rcases c246 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c245 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c248 : v251 ∨ ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v252 := by
      rcases c219 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
    rcases c221 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c249 : ¬v251 ∨ ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v252 := by
      rcases c223 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c227 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c250 : ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c249 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c248 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c251 : ¬v251 ∨ v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v280 := by
      rcases c96 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c222 with a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
  have c252 : v251 ∨ v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v280 := by
      rcases c218 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c216 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c253 : v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v251 := by
      rcases c252 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c251 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c254 : ¬v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c235 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c236 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c255 : ¬v260 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c177 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c176 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c256 : v260 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c175 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c174 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c257 : v247 ∨ v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v260 := by
      rcases c255 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c256 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c258 : ¬v251 ∨ ¬v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v280 := by
      rcases c226 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c224 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n0 a
  have c259 : v208 ∨ v242 ∨ v244 ∨ ¬v278 ∨ ¬v279 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v207 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a n0
    have u2 : ¬v206 := by
      rcases c155 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n3 a
    rcases c51 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd n4 a
    · exact absurd n3 a
    · exact absurd n5 a
    · exact absurd a n0
  have c260 : ¬v208 ∨ v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c167 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c84 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
  have c261 : v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c153 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c149 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c262 : ¬v207 ∨ ¬v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v208 := by
      rcases c165 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c169 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c263 : v207 ∨ ¬v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c163 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
    rcases c161 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c264 : ¬v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v207 := by
      rcases c263 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c262 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c265 : v275 ∨ v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v303 := by
      rcases c204 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c205 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c266 : ¬v251 ∨ ¬v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v308 := by
      rcases c258 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c225 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
  have c267 : v251 ∨ ¬v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c244 with a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    rcases c220 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c268 : ¬v252 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c266 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c267 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c269 : v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c230 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
    rcases c231 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c270 : v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v265 := by
      rcases c269 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c247 with a|a
    · exact absurd u1 a
    · exact absurd a n1
  have c271 : v275 ∨ ¬v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c213 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c212 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
  have c272 : v265 ∨ v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c234 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c89 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c273 : ¬v248 ∨ ¬v249 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v271 := by
      rcases c202 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c200 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c274 : v203 ∨ v204 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c137 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c136 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c275 : ¬v266 ∨ ¬v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v294 := by
      rcases c90 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c188 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c276 : ¬v203 ∨ v204 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c77 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c140 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
  have c277 : v266 ∨ v204 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v203 := by
      rcases c274 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c276 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c278 : v248 ∨ ¬v249 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c93 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c197 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c279 : ¬v248 ∨ ¬v247 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c190 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c189 with a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c280 : ¬v248 ∨ ¬v247 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c192 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c191 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c281 : ¬v266 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v248 := by
      rcases c280 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c275 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c282 : v249 ∨ v248 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v299 := by
      rcases c193 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c194 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c283 : v271 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v249 := by
      rcases c278 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c282 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c284 : v249 ∨ v248 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c196 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c195 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
  have c285 : ¬v229 ∨ v208 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v202 := by
      rcases c172 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c170 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c286 : v242 ∨ ¬v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c154 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
    rcases c150 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n1 a
  have c287 : v154 ∨ v199 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v153 := by
      rcases c125 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c130 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c288 : ¬v154 ∨ v199 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v153 := by
      rcases c128 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c132 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c289 : v199 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v154 := by
      rcases c288 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c287 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c290 : ¬v153 ∨ ¬v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v152 := by
      rcases c124 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c119 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c291 : ¬v152 ∨ ¬v151 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c112 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c114 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c292 : ¬v153 ∨ ¬v199 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v154 := by
      rcases c134 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c75 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c293 : v151 ∨ ¬v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c72 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
    rcases c108 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd n2 a
  have c294 : ¬v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v151 := by
      rcases c293 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c291 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
  have c295 : v152 ∨ v153 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c117 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
    rcases c116 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c296 : ¬v250 ∨ ¬v249 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c215 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c214 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c297 : ¬v151 ∨ ¬v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c113 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c111 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c298 : ¬v206 ∨ ¬v207 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v278 := by
      rcases c157 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c156 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c299 : v242 ∨ v244 ∨ ¬v279 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v208 := by
      rcases c260 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
    have u2 : ¬v278 := by
      rcases c259 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : v207 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u1
    rcases c286 with a|a|a
    · exact absurd a n0
    · exact absurd u3 a
    · exact absurd a u2
  have c300 : ¬v207 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v208 := by
      rcases c164 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    rcases c166 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
  have c301 : v207 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v208 := by
      rcases c158 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c162 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n1
  have c302 : v280 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v207 := by
      rcases c300 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c301 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c303 : v278 ∨ v207 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c152 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    rcases c146 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c304 : v275 ∨ v250 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v249 := by
      rcases c265 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    rcases c210 with a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
  have c305 : ¬v275 ∨ v250 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v249 := by
      rcases c206 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    rcases c94 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
  have c306 : v303 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v275 := by
      rcases c304 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c305 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c307 : v197 ∨ v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v153 := by
      rcases c115 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c118 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n2
  have c308 : v151 ∨ v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c105 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c107 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c309 : ¬v199 ∨ ¬v153 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v154 := by
      rcases c131 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c135 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c310 : ¬v247 ∨ ¬v246 ∨ ¬v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c181 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c180 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c311 : ¬v247 ∨ ¬v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v260 := by
      rcases c310 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c243 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c312 : v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c183 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c182 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c313 : ¬v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c185 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c184 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c314 : v248 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v266 := by
      rcases c312 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c313 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c315 : ¬v299 ∨ ¬v248 ∨ ¬v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v271 := by
      rcases c203 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c201 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
  have c316 : ¬v249 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v299 := by
      rcases c273 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c315 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c317 : v278 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v207 := by
      rcases c286 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c303 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
  have c318 : ¬v252 ∨ ¬v246 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c237 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c238 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
  have c319 : ¬v252 ∨ ¬v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v265 := by
      rcases c318 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c254 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c320 : ¬v275 ∨ ¬v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c211 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c306 with a|a
    · exact absurd a u1
    · exact absurd a n2
  have c321 : ¬v275 ∨ ¬v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v250 := by
      rcases c296 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c320 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c322 : v224 ∨ v148 ∨ v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c100 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c99 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c323 : v149 ∨ v145 ∨ v148 ∨ ¬v202 ∨ v203 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v224 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c3 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
  have c324 : ¬v279 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v244 := by
      rcases c264 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v308 := by
      rcases c250 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v208 := by
      rcases c260 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
    have u4 : v252 := by
      rcases c253 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v207 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
    have u6 : ¬v246 := by
      rcases c319 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v247 := by
      rcases c257 with a|a
      · exact a
      · exact absurd a u6
    have u8 : ¬v266 := by
      rcases c281 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v248 := by
      rcases c279 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u8
    have u10 : v204 := by
      rcases c277 with a|a
      · exact absurd a u8
      · exact a
    have u11 : v271 := by
      rcases c283 with a|a
      · exact a
      · exact absurd a u9
    have u12 : v249 := by
      rcases c284 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u11 a
    have u13 : ¬v275 := by
      rcases c321 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v250 := by
      rcases c271 with a|a|a
      · exact absurd a u13
      · exact absurd u12 a
      · exact a
    have u15 : v242 := by
      rcases c299 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd n1 a
    have u16 : ¬v206 := by
      rcases c298 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u15 a
    have u17 : v199 := by
      rcases c289 with a|a
      · exact a
      · exact absurd a u1
    have u18 : ¬v200 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u14
    have u19 : v265 := by
      rcases c272 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
    have u20 : ¬v203 := by
      rcases c28 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v205 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u11 a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact absurd a u9
    have u22 : ¬v153 := by
      rcases c292 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u1
    have u23 : ¬v229 := by
      rcases c285 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u19 a
    have u24 : v230 := by
      rcases c138 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u20
      · exact absurd a u8
    have u25 : v235 := by
      rcases c145 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u10 a
      · exact absurd u11 a
    have u26 : v152 := by
      rcases c295 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u15 a
    have u27 : ¬v239 := by
      rcases c294 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v154 := by
      rcases c126 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u17 a
      · exact absurd a u1
    have u29 : v202 := by
      rcases c171 with a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd u19 a
    have u30 : ¬v231 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
      · exact absurd u10 a
      · exact absurd a u20
      · exact absurd a u21
    have u31 : ¬v151 := by
      rcases c297 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u27
    have u32 : ¬v145 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u26 a
      · exact absurd a u31
      · exact absurd a u16
      · exact absurd a u27
    have u33 : ¬v148 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u28 a
      · exact absurd u29 a
      · exact absurd a u3
      · exact absurd a u23
    have u34 : ¬v149 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u30
    rcases c323 with a|a|a|a|a
    · exact absurd a u34
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd u29 a
    · exact absurd a u20
  have c325 : v278 ∨ ¬v279 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v242 := by
      rcases c317 with a|a
      · exact absurd a n0
      · exact a
    have u2 : ¬v280 := by
      rcases c324 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v244 := by
      rcases c302 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v364 := by
      rcases c98 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n0
    have u5 : v243 := by
      rcases c87 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact absurd a u4
    have u6 : v208 := by
      rcases c53 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
    have u7 : ¬v206 := by
      rcases c52 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u4
    have u8 : ¬v207 := by
      rcases c168 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
    rcases c148 with a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd u1 a
  have c326 : ¬v275 ∨ v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c207 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c206 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c327 : v250 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v275 := by
      rcases c326 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c265 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c328 : ¬v279 := by
    by_contra hc
    have u1 : v278 := by
      rcases c325 with a|a
      · exact a
      · exact absurd hc a
    have u2 : ¬v280 := by
      rcases c324 with a|a
      · exact absurd hc a
      · exact a
    have u3 : ¬v252 := by
      rcases c268 with a|a
      · exact a
      · exact absurd a u2
    have u4 : v308 := by
      rcases c253 with a|a
      · exact absurd a u3
      · exact a
    have u5 : v246 := by
      rcases c270 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v251 := by
      rcases c217 with a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
    have u7 : ¬v247 := by
      rcases c311 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v250 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact absurd hc a
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v248 := by
      rcases c314 with a|a
      · exact a
      · exact absurd a u7
    have u10 : v249 := by
      rcases c327 with a|a
      · exact absurd a u8
      · exact a
    rcases c316 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c329 : ¬v242 ∨ ¬v207 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c298 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c151 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c330 : ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v207 := by
      rcases c329 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c261 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c331 : ¬v207 ∨ ¬v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c168 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n1 a
    rcases c83 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c332 : v153 ∨ ¬v199 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v154 := by
      rcases c129 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c127 with a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
  have c333 : ¬v199 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v153 := by
      rcases c332 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c309 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
  have c334 : v153 ∨ ¬v145 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v244 := by
      rcases c302 with a|a
      · exact absurd a n2
      · exact a
    have u2 : ¬v207 := by
      rcases c331 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
    have u3 : ¬v199 := by
      rcases c333 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v154 := by
      rcases c76 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
    have u5 : ¬v208 := by
      rcases c12 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
    rcases c160 with a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd u1 a
  have c335 : ¬v153 ∨ ¬v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c123 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    rcases c121 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c336 : ¬v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v153 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u2 : ¬v197 := by
      rcases c73 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u1
    rcases c120 with a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c337 : v151 ∨ v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c106 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c104 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c338 : ¬v151 ∨ v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c71 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c109 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n0 a
  have c339 : v239 ∨ v152 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v151 := by
      rcases c337 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c338 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c340 : v275 ∨ v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c95 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c208 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c341 : v239 ∨ v242 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v152 := by
      rcases c339 with a|a
      · exact absurd a n0
      · exact a
    rcases c336 with a|a
    · exact absurd u1 a
    · exact absurd a n1
  have c343 : v266 ∨ v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v294 := by
      rcases c186 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c91 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
  have c344 : ¬v230 ∨ ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v203 := by
      rcases c143 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c139 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
  have c345 : ¬v149 ∨ ¬v148 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c102 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c101 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c346 : ¬v271 ∨ ¬v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c199 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
    rcases c92 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u1
  have c347 : ¬v146 ∨ ¬v145 ∨ ¬v153 ∨ v204 ∨ ¬v205 ∨ ¬v206 ∨ ¬v208 ∨ ¬v239 ∨ v240 ∨ v242 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v152 := by
      rcases c294 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : v266 := by
      rcases c277 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v278 := by
      rcases c317 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v308 := by
      rcases c253 with a|a
      · exact absurd a n10
      · exact a
    have u5 : v246 := by
      rcases c270 with a|a
      · exact a
      · exact absurd a n10
    have u6 : v151 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n7 a
    have u7 : ¬v247 := by
      rcases c281 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v207 := by
      rcases c155 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n9
      · exact absurd u3 a
    have u9 : ¬v280 := by
      rcases c250 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v251 := by
      rcases c217 with a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u4 a
      · exact absurd a u9
    have u11 : v248 := by
      rcases c314 with a|a
      · exact a
      · exact absurd a u7
    have u12 : v244 := by
      rcases c302 with a|a
      · exact absurd a u9
      · exact a
    have u13 : ¬v249 := by
      rcases c316 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v294 := by
      rcases c187 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd u11 a
    have u15 : ¬v199 := by
      rcases c333 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v154 := by
      rcases c133 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a u15
    have u17 : v250 := by
      rcases c327 with a|a
      · exact a
      · exact absurd a u13
    have u18 : ¬v271 := by
      rcases c346 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
    have u19 : v241 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd u6 a
      · exact absurd n6 a
    have u20 : v200 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u17 a
      · exact absurd u10 a
      · exact absurd u3 a
      · exact absurd a u8
    have u21 : ¬v235 := by
      rcases c144 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u18
      · exact absurd a n3
    have u22 : v299 := by
      rcases c198 with a|a|a|a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd u11 a
      · exact a
    have u23 : v203 := by
      rcases c27 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u7
    have u24 : v237 := by
      rcases c47 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u8
    have u25 : ¬v150 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u6 a
    have u26 : v212 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u11 a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u18
    have u27 : ¬v230 := by
      rcases c141 with a|a|a|a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v238 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u12 a
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a n8
    have u29 : ¬v211 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u11 a
      · exact absurd u20 a
      · exact absurd a u7
      · exact absurd a u14
    have u30 : v234 := by
      rcases c43 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd u23 a
      · exact absurd a u28
    have u31 : ¬v265 := by
      rcases c247 with a|a
      · exact a
      · exact absurd a n10
    have u32 : v216 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd n6 a
      · exact absurd a u16
      · exact absurd u20 a
    have u33 : v149 := by
      rcases c1 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd u23 a
      · exact absurd u20 a
      · exact absurd a u29
    have u34 : v293 := by
      rcases c233 with a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a n10
      · exact absurd u5 a
    have u35 : v229 := by
      rcases c26 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd n6 a
      · exact absurd u34 a
      · exact absurd a n10
      · exact absurd a u31
    have u36 : ¬v202 := by
      rcases c173 with a|a|a|a
      · exact absurd u35 a
      · exact a
      · exact absurd n6 a
      · exact absurd a u31
    have u37 : ¬v225 := by
      rcases c38 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd n6 a
      · exact absurd a u36
      · exact absurd a n3
      · exact absurd a u28
    have u38 : v224 := by
      rcases c37 with a|a|a|a|a|a
      · exact absurd a u36
      · exact a
      · exact absurd n6 a
      · exact absurd u23 a
      · exact absurd u30 a
      · exact absurd u35 a
    have u39 : v148 := by
      rcases c15 with a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd u35 a
      · exact absurd a u16
      · exact absurd a u37
      · exact absurd a u28
    rcases c345 with a|a|a
    · exact absurd u33 a
    · exact absurd u39 a
    · exact absurd u38 a
  have c348 : v204 ∨ ¬v145 ∨ ¬v205 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v266 := by
      rcases c277 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v278 := by
      rcases c317 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v247 := by
      rcases c281 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v246 := by
      rcases c257 with a|a
      · exact absurd a u3
      · exact a
    have u5 : v248 := by
      rcases c314 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v252 := by
      rcases c319 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v249 := by
      rcases c316 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v294 := by
      rcases c187 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd u5 a
    have u9 : v308 := by
      rcases c253 with a|a
      · exact absurd a u6
      · exact a
    have u10 : v250 := by
      rcases c327 with a|a
      · exact a
      · exact absurd a u7
    have u11 : ¬v271 := by
      rcases c346 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u7
    have u12 : ¬v280 := by
      rcases c250 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v251 := by
      rcases c217 with a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
    have u14 : v275 := by
      rcases c340 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u10 a
    have u15 : ¬v235 := by
      rcases c144 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a n0
    have u16 : v299 := by
      rcases c198 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd u5 a
      · exact a
    have u17 : v244 := by
      rcases c302 with a|a
      · exact absurd a u12
      · exact a
    have u18 : v239 := by
      rcases c341 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
    have u19 : v153 := by
      rcases c334 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
    have u20 : v212 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u5 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
    have u21 : ¬v207 := by
      rcases c331 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u12
    have u22 : ¬v199 := by
      rcases c333 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v154 := by
      rcases c133 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact absurd a u22
    have u24 : ¬v152 := by
      rcases c294 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : v206 := by
      rcases c147 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd u2 a
    have u26 : v208 := by
      rcases c160 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd u17 a
    have u27 : v151 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u18 a
    have u28 : v197 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n3
    have u29 : ¬v236 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd u25 a
      · exact absurd n2 a
    have u30 : v200 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u10 a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact absurd a u21
    have u31 : ¬v272 := by
      rcases c46 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u25 a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact absurd a u11
    have u32 : v361 := by
      rcases c49 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd u2 a
    have u33 : ¬v240 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact absurd u27 a
      · exact absurd n1 a
      · exact absurd a u21
    have u34 : v241 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a u23
      · exact absurd u27 a
      · exact absurd u26 a
    have u35 : ¬v150 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd u27 a
    have u36 : ¬v358 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u25 a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u31
    have u37 : ¬v211 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd u30 a
      · exact absurd a u3
      · exact absurd a u8
    have u38 : v203 := by
      rcases c27 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u3
    have u39 : v268 := by
      rcases c57 with a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd u10 a
    have u40 : v237 := by
      rcases c47 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u33
      · exact absurd a u21
    have u41 : ¬v146 := by
      rcases c347 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd u25 a
      · exact absurd u26 a
      · exact absurd u18 a
      · exact absurd a u33
      · exact absurd a n3
      · exact absurd a u6
    have u42 : ¬v238 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u17 a
      · exact absurd u34 a
      · exact absurd a u15
      · exact absurd a u33
    have u43 : v190 := by
      rcases c103 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u27 a
      · exact absurd a u15
    have u44 : ¬v230 := by
      rcases c141 with a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd u38 a
      · exact a
    have u45 : ¬v356 := by
      rcases c85 with a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd a u15
      · exact absurd a u33
    have u46 : ¬v233 := by
      rcases c42 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u38 a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd u40 a
    have u47 : v192 := by
      rcases c70 with a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u19 a
      · exact absurd a u35
    have u48 : v155 := by
      rcases c239 with a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd n1 a
      · exact absurd u30 a
    have u49 : v360 := by
      rcases c86 with a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u17 a
      · exact absurd u40 a
    have u50 : ¬v274 := by
      rcases c79 with a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u26 a
      · exact absurd a n0
    have u51 : ¬v348 := by
      rcases c44 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u42
      · exact absurd a u50
    have u52 : ¬v346 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u29
      · exact absurd a u31
    have u53 : ¬v345 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u11
    have u54 : v234 := by
      rcases c43 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u26 a
      · exact absurd a n0
      · exact absurd u38 a
      · exact absurd a u42
    have u55 : ¬v355 := by
      rcases c241 with a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u32 a
      · exact absurd a u36
    have u56 : v352 := by
      rcases c64 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u2 a
      · exact absurd a u31
      · exact absurd u39 a
      · exact absurd a u36
    have u57 : v349 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd a u31
      · exact absurd u14 a
      · exact absurd u39 a
      · exact absurd a u55
    have u58 : v300 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a u52
      · exact absurd a u55
    have u59 : ¬v347 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd a u52
      · exact absurd a u36
    have u60 : v269 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u1 a
      · exact absurd u39 a
      · exact absurd a u52
      · exact absurd a u59
    have u61 : ¬v188 := by
      rcases c24 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u28 a
      · exact absurd u47 a
      · exact absurd a u59
      · exact absurd a u36
    have u62 : v350 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd a u53
      · exact absurd a u52
      · exact absurd a u59
      · exact absurd u56 a
    have u63 : v301 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd a u8
      · exact absurd a u52
      · exact absurd a u59
      · exact absurd a u36
    have u64 : ¬v297 := by
      rcases c54 with a|a|a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd a u44
      · exact absurd a u37
      · exact absurd a u8
      · exact absurd a u46
    have u65 : ¬v354 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd a u44
      · exact absurd a u46
      · exact absurd u54 a
      · exact absurd a u51
    have u66 : ¬v162 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u60 a
      · exact absurd u2 a
      · exact absurd u28 a
      · exact absurd u56 a
      · exact absurd a u61
    have u67 : v170 := by
      rcases c23 with a|a|a|a|a|a
      · exact a
      · exact absurd a u61
      · exact absurd u9 a
      · exact absurd a u22
      · exact absurd a u64
      · exact absurd a u65
    have u68 : v276 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u32 a
      · exact absurd u2 a
      · exact absurd u56 a
      · exact absurd u60 a
    have u69 : ¬v304 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd u16 a
      · exact absurd u13 a
      · exact absurd u5 a
      · exact absurd a u7
    have u70 : ¬v171 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd u67 a
      · exact absurd a u6
    have u71 : ¬v168 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u13 a
      · exact absurd u67 a
      · exact absurd a u7
      · exact absurd a u69
    have u72 : v196 := by
      rcases c14 with a|a|a|a|a|a
      · exact absurd a u41
      · exact absurd a u70
      · exact absurd u27 a
      · exact absurd a u23
      · exact a
      · exact absurd a u71
    have u73 : ¬v195 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd u19 a
      · exact absurd u27 a
      · exact absurd u67 a
      · exact absurd a u41
    have u74 : ¬v363 := by
      rcases c21 with a|a|a|a|a|a
      · exact absurd a u73
      · exact a
      · exact absurd a u66
      · exact absurd u68 a
      · exact absurd a u22
      · exact absurd a u12
    have u75 : ¬v357 := by
      rcases c242 with a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd a u74
      · exact absurd u49 a
    rcases c25 with a|a|a|a|a|a
    · exact absurd a u75
    · exact absurd u72 a
    · exact absurd u43 a
    · exact absurd a u45
    · exact absurd a u73
    · exact absurd a u74
  have c349 : v230 ∨ ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v203 := by
      rcases c78 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c142 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c350 : ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v230 := by
      rcases c344 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c349 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c351 : v197 ∨ ¬v153 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v152 := by
      rcases c122 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c74 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd n2 a
  have c352 : ¬v153 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v197 := by
      rcases c290 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c351 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c353 : ¬v145 ∨ ¬v205 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v153 := by
      rcases c334 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
    have u2 : ¬v252 := by
      rcases c268 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v242 := by
      rcases c352 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v246 := by
      rcases c270 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v204 := by
      rcases c348 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u3
    have u6 : ¬v247 := by
      rcases c311 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v266 := by
      rcases c350 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v248 := by
      rcases c314 with a|a
      · exact a
      · exact absurd a u6
    rcases c343 with a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd u8 a
  have c354 : v278 ∨ v207 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c148 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
    rcases c81 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n2 a
  have c355 : ¬v242 ∨ v207 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := by
      rcases c330 with a|a
      · exact absurd n0 a
      · exact a
    rcases c354 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c356 : v280 := by
    by_contra hc
    have u1 : ¬v252 := by
      rcases c268 with a|a
      · exact a
      · exact absurd a hc
    have u2 : v308 := by
      rcases c253 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v244 := by
      rcases c302 with a|a
      · exact absurd a hc
      · exact a
    have u4 : v246 := by
      rcases c270 with a|a
      · exact a
      · exact absurd a u1
    have u5 : v251 := by
      rcases c217 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a hc
    have u6 : ¬v207 := by
      rcases c331 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a hc
    have u7 : ¬v247 := by
      rcases c311 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v242 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u6
    have u9 : v248 := by
      rcases c314 with a|a
      · exact a
      · exact absurd a u7
    have u10 : v278 := by
      rcases c317 with a|a
      · exact a
      · exact absurd a u8
    have u11 : v239 := by
      rcases c341 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a hc
    have u12 : v266 := by
      rcases c343 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u9 a
    have u13 : ¬v249 := by
      rcases c316 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v206 := by
      rcases c147 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u10 a
    have u15 : ¬v152 := by
      rcases c294 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v204 := by
      rcases c350 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v250 := by
      rcases c327 with a|a
      · exact a
      · exact absurd a u13
    have u18 : ¬v271 := by
      rcases c346 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u13
    have u19 : v151 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u11 a
    have u20 : v200 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u17 a
      · exact absurd u5 a
      · exact absurd u10 a
      · exact absurd a u6
    have u21 : v205 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u9 a
      · exact absurd u20 a
      · exact absurd a u13
      · exact absurd a u18
    have u22 : ¬v145 := by
      rcases c353 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a hc
    rcases c8 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u22
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd u14 a
    · exact absurd a u15
  have u1 : ¬v279 := c328
  have u2 : v280 := c356
  have u3 : ¬v244 := by
    rcases c264 with a|a
    · exact a
    · exact absurd u2 a
  have u4 : ¬v308 := by
    rcases c250 with a|a
    · exact absurd u2 a
    · exact a
  have u5 : ¬v208 := by
    rcases c260 with a|a|a
    · exact a
    · exact absurd a u3
    · exact absurd u2 a
  have u6 : v252 := by
    rcases c253 with a|a
    · exact a
    · exact absurd a u4
  have u7 : v207 := by
    rcases c159 with a|a|a|a
    · exact a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u5
  have u8 : ¬v246 := by
    rcases c319 with a|a
    · exact absurd u6 a
    · exact a
  have u9 : ¬v251 := by
    rcases c258 with a|a|a
    · exact a
    · exact absurd u6 a
    · exact absurd a u4
  have u10 : v247 := by
    rcases c257 with a|a
    · exact a
    · exact absurd a u8
  have u11 : ¬v266 := by
    rcases c281 with a|a
    · exact a
    · exact absurd u10 a
  have u12 : ¬v248 := by
    rcases c279 with a|a|a
    · exact a
    · exact absurd u10 a
    · exact absurd a u11
  have u13 : v271 := by
    rcases c283 with a|a
    · exact a
    · exact absurd a u12
  have u14 : v249 := by
    rcases c284 with a|a|a
    · exact a
    · exact absurd a u12
    · exact absurd u13 a
  have u15 : ¬v275 := by
    rcases c321 with a|a
    · exact a
    · exact absurd u14 a
  have u16 : ¬v250 := by
    rcases c271 with a|a|a
    · exact absurd a u15
    · exact absurd u14 a
    · exact a
  have u17 : v278 := by
    rcases c60 with a|a|a|a|a|a
    · exact absurd a u1
    · exact a
    · exact absurd u2 a
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a u16
  have u18 : ¬v242 := by
    rcases c330 with a|a
    · exact a
    · exact absurd u17 a
  have u19 : ¬v206 := by
    rcases c155 with a|a|a|a
    · exact a
    · exact absurd u7 a
    · exact absurd a u18
    · exact absurd u17 a
  rcases c82 with a|a|a|a
  · exact absurd a u19
  · exact absurd u7 a
  · exact absurd u17 a
  · exact absurd a u18
