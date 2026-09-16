import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 275-clause unsatisfiable core of forbidden pattern 2, contradictory.
101 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem pcore002_false
    (v245 v246 v247 v248 v249 v250 v251 v252 v253 v254 v256 v257 v258 v259 v260 v262 v263 v264 v265 v266 v268 v270 v271 v273 v274 v275 v278 v280 v281 v282 v283 v284 v285 v286 v287 v288 v289 v290 v291 v292 v293 v294 v295 v296 v297 v298 v299 v300 v301 v302 v303 v304 v306 v308 v309 v311 v312 v313 v314 v316 v317 v324 v325 v326 v327 v328 v329 v331 v332 v333 v334 v338 v339 v341 v342 v343 v344 v345 v346 v347 v348 v349 v350 v352 v354 v355 v356 v357 v358 v360 v361 v362 v363 v364 : Prop)
    (c1 : ¬v246 ∨ ¬v245 ∨ ¬v281 ∨ ¬v282 ∨ v247 ∨ v288)
    (c2 : v245 ∨ v246 ∨ v282 ∨ ¬v288 ∨ v281 ∨ ¬v247)
    (c3 : ¬v253 ∨ ¬v288 ∨ ¬v309 ∨ ¬v260 ∨ v246 ∨ v281)
    (c4 : v262 ∨ ¬v253 ∨ ¬v249 ∨ v245 ∨ v246 ∨ ¬v256)
    (c5 : ¬v290 ∨ v245 ∨ v246 ∨ ¬v249 ∨ v281 ∨ v284)
    (c6 : ¬v263 ∨ ¬v253 ∨ v245 ∨ v246 ∨ v250 ∨ v257)
    (c7 : ¬v291 ∨ ¬v245 ∨ ¬v281 ∨ ¬v250 ∨ ¬v246 ∨ v285)
    (c8 : v291 ∨ v245 ∨ v246 ∨ v250 ∨ ¬v285 ∨ v281)
    (c9 : ¬v292 ∨ v246 ∨ v245 ∨ ¬v251 ∨ v281 ∨ v286)
    (c10 : ¬v245 ∨ v246 ∨ ¬v287 ∨ ¬v293 ∨ v252 ∨ v281)
    (c11 : ¬v246 ∨ v245 ∨ ¬v252 ∨ ¬v281 ∨ v287 ∨ v293)
    (c12 : v253 ∨ v265 ∨ ¬v293 ∨ v281 ∨ v246 ∨ v314)
    (c13 : ¬v253 ∨ ¬v265 ∨ ¬v281 ∨ ¬v314 ∨ ¬v246 ∨ v293)
    (c14 : v259 ∨ ¬v265 ∨ ¬v287 ∨ v252 ∨ ¬v293 ∨ v314)
    (c15 : v283 ∨ v282 ∨ ¬v248 ∨ v247 ∨ ¬v245 ∨ v294)
    (c16 : ¬v295 ∨ ¬v245 ∨ v282 ∨ v247 ∨ v249 ∨ ¬v284)
    (c17 : ¬v245 ∨ v282 ∨ ¬v250 ∨ v247 ∨ v285 ∨ v296)
    (c18 : ¬v317 ∨ ¬v254 ∨ ¬v285 ∨ ¬v282 ∨ v245 ∨ v257)
    (c19 : ¬v245 ∨ v247 ∨ ¬v286 ∨ v282 ∨ v251 ∨ ¬v297)
    (c20 : ¬v283 ∨ v299 ∨ ¬v248 ∨ ¬v245 ∨ v249 ∨ ¬v284)
    (c21 : ¬v245 ∨ ¬v256 ∨ ¬v275 ∨ ¬v250 ∨ ¬v257 ∨ v249)
    (c22 : ¬v245 ∨ v249 ∨ v284 ∨ ¬v250 ∨ v285 ∨ v303)
    (c23 : v245 ∨ ¬v285 ∨ ¬v284 ∨ ¬v303 ∨ ¬v249 ∨ v250)
    (c24 : v256 ∨ v245 ∨ v257 ∨ ¬v285 ∨ v284 ∨ v324)
    (c25 : ¬v257 ∨ v327 ∨ ¬v278 ∨ v250 ∨ v306 ∨ ¬v285)
    (c26 : v257 ∨ ¬v327 ∨ v278 ∨ ¬v250 ∨ ¬v306 ∨ v285)
    (c27 : v258 ∨ v327 ∨ v286 ∨ ¬v278 ∨ ¬v251 ∨ v306)
    (c28 : ¬v259 ∨ ¬v245 ∨ ¬v251 ∨ ¬v258 ∨ v252 ∨ v280)
    (c29 : v289 ∨ ¬v246 ∨ ¬v248 ∨ v288 ∨ v247 ∨ v294)
    (c30 : v295 ∨ v290 ∨ ¬v249 ∨ ¬v288 ∨ ¬v247 ∨ v246)
    (c31 : v296 ∨ ¬v246 ∨ ¬v250 ∨ v288 ∨ v247 ∨ v291)
    (c32 : ¬v296 ∨ ¬v291 ∨ ¬v288 ∨ ¬v247 ∨ v246 ∨ v250)
    (c33 : ¬v332 ∨ ¬v291 ∨ ¬v288 ∨ v246 ∨ v263 ∨ ¬v260)
    (c34 : ¬v246 ∨ ¬v297 ∨ v292 ∨ ¬v251 ∨ ¬v247 ∨ ¬v288)
    (c35 : ¬v292 ∨ ¬v246 ∨ ¬v297 ∨ v247 ∨ v251 ∨ v288)
    (c36 : v297 ∨ v246 ∨ v292 ∨ ¬v251 ∨ ¬v247 ∨ ¬v288)
    (c37 : v260 ∨ v270 ∨ ¬v252 ∨ v247 ∨ ¬v246 ∨ v265)
    (c38 : v298 ∨ ¬v246 ∨ ¬v252 ∨ v288 ∨ v247 ∨ v293)
    (c39 : ¬v298 ∨ v246 ∨ ¬v293 ∨ ¬v247 ∨ ¬v288 ∨ v252)
    (c40 : ¬v334 ∨ ¬v260 ∨ ¬v288 ∨ ¬v293 ∨ v265 ∨ v246)
    (c41 : v260 ∨ v334 ∨ ¬v265 ∨ v288 ∨ v293 ∨ ¬v246)
    (c42 : ¬v289 ∨ ¬v300 ∨ ¬v250 ∨ ¬v248 ∨ ¬v246 ∨ v291)
    (c43 : ¬v289 ∨ v301 ∨ ¬v248 ∨ ¬v246 ∨ v251 ∨ ¬v292)
    (c44 : ¬v246 ∨ ¬v262 ∨ ¬v275 ∨ ¬v250 ∨ ¬v263 ∨ v249)
    (c45 : v263 ∨ v291 ∨ ¬v306 ∨ ¬v250 ∨ v278 ∨ ¬v342)
    (c46 : ¬v263 ∨ v291 ∨ v265 ∨ v246 ∨ v293 ∨ v343)
    (c47 : ¬v265 ∨ ¬v264 ∨ ¬v280 ∨ ¬v252 ∨ ¬v246 ∨ v251)
    (c48 : ¬v246 ∨ v292 ∨ v251 ∨ ¬v252 ∨ v293 ∨ v308)
    (c49 : ¬v246 ∨ ¬v265 ∨ ¬v293 ∨ ¬v264 ∨ v292 ∨ v344)
    (c50 : ¬v265 ∨ ¬v344 ∨ ¬v308 ∨ ¬v293 ∨ v252 ∨ v280)
    (c51 : v344 ∨ v265 ∨ ¬v280 ∨ ¬v252 ∨ v308 ∨ v293)
    (c52 : v346 ∨ v268 ∨ v266 ∨ ¬v247 ∨ v296 ∨ ¬v294)
    (c53 : ¬v301 ∨ ¬v294 ∨ ¬v297 ∨ ¬v251 ∨ ¬v247 ∨ v248)
    (c54 : v302 ∨ v298 ∨ v248 ∨ v252 ∨ ¬v247 ∨ ¬v294)
    (c55 : ¬v302 ∨ ¬v298 ∨ ¬v252 ∨ ¬v248 ∨ v247 ∨ v294)
    (c56 : ¬v298 ∨ ¬v348 ∨ ¬v266 ∨ ¬v270 ∨ v247 ∨ v294)
    (c57 : v348 ∨ v266 ∨ ¬v247 ∨ v270 ∨ v298 ∨ ¬v294)
    (c58 : ¬v298 ∨ ¬v354 ∨ ¬v308 ∨ ¬v270 ∨ v252 ∨ v280)
    (c59 : v273 ∨ v301 ∨ v358 ∨ ¬v278 ∨ v306 ∨ ¬v251)
    (c60 : ¬v364 ∨ v251 ∨ v278 ∨ v306 ∨ ¬v280 ∨ v308)
    (c61 : v253 ∨ ¬v333 ∨ ¬v309 ∨ v260 ∨ v264 ∨ v313)
    (c62 : ¬v311 ∨ v339 ∨ ¬v275 ∨ v256 ∨ v262 ∨ ¬v324)
    (c63 : v253 ∨ v258 ∨ v263 ∨ ¬v257 ∨ v264 ∨ v278)
    (c64 : v253 ∨ ¬v259 ∨ ¬v328 ∨ v257 ∨ v312 ∨ v314)
    (c65 : v264 ∨ ¬v313 ∨ ¬v280 ∨ ¬v329 ∨ v258 ∨ v344)
    (c66 : ¬v258 ∨ ¬v327 ∨ ¬v364 ∨ ¬v280 ∨ ¬v329 ∨ v278)
    (c67 : ¬v352 ∨ v268 ∨ ¬v278 ∨ v263 ∨ v332 ∨ v342)
    (c68 : ¬v341 ∨ ¬v339 ∨ ¬v343 ∨ ¬v265 ∨ ¬v262 ∨ v263)
    (c69 : ¬v263 ∨ ¬v265 ∨ ¬v343 ∨ ¬v264 ∨ v342 ∨ v344)
    (c70 : v264 ∨ ¬v364 ∨ v342 ∨ ¬v280 ∨ v278 ∨ v344)
    (c71 : v264 ∨ v342 ∨ v280 ∨ ¬v278 ∨ v344 ∨ v364)
    (c72 : ¬v274 ∨ ¬v348 ∨ ¬v354 ∨ v270 ∨ ¬v360 ∨ v280)
    (c73 : v274 ∨ v357 ∨ ¬v271 ∨ ¬v273 ∨ v356 ∨ ¬v360)
    (c74 : ¬v334 ∨ ¬v281 ∨ v288 ∨ v309 ∨ v293 ∨ ¬v314)
    (c75 : v291 ∨ v292 ∨ ¬v285 ∨ v286 ∨ v281 ∨ v306)
    (c76 : ¬v291 ∨ ¬v292 ∨ ¬v306 ∨ ¬v286 ∨ ¬v281 ∨ v285)
    (c77 : v312 ∨ ¬v285 ∨ ¬v287 ∨ ¬v314 ∨ v281 ∨ ¬v328)
    (c78 : v313 ∨ ¬v344 ∨ ¬v293 ∨ v292 ∨ v281 ∨ v314)
    (c79 : v316 ∨ v317 ∨ ¬v285 ∨ v284 ∨ ¬v282 ∨ v324)
    (c80 : v325 ∨ v286 ∨ ¬v285 ∨ v324 ∨ v284 ∨ v327)
    (c81 : v361 ∨ ¬v306 ∨ ¬v324 ∨ v285 ∨ v303 ∨ ¬v327)
    (c82 : ¬v361 ∨ v327 ∨ ¬v285 ∨ v306 ∨ v324 ∨ ¬v303)
    (c83 : v326 ∨ ¬v324 ∨ v285 ∨ v287 ∨ ¬v284 ∨ v328)
    (c84 : ¬v326 ∨ ¬v325 ∨ ¬v287 ∨ v284 ∨ v286 ∨ v329)
    (c85 : v328 ∨ ¬v285 ∨ v329 ∨ ¬v287 ∨ v286 ∨ v327)
    (c86 : ¬v328 ∨ ¬v327 ∨ ¬v329 ∨ ¬v286 ∨ v285 ∨ v287)
    (c87 : ¬v327 ∨ ¬v286 ∨ v364 ∨ ¬v329 ∨ v308 ∨ ¬v306)
    (c88 : ¬v338 ∨ ¬v334 ∨ ¬v348 ∨ ¬v302 ∨ ¬v293 ∨ v298)
    (c89 : ¬v331 ∨ v295 ∨ ¬v332 ∨ v288 ∨ ¬v296 ∨ v349)
    (c90 : v333 ∨ v332 ∨ v288 ∨ ¬v342 ∨ ¬v292 ∨ v291)
    (c91 : v333 ∨ v296 ∨ ¬v288 ∨ v332 ∨ ¬v297 ∨ v352)
    (c92 : ¬v334 ∨ ¬v292 ∨ ¬v333 ∨ ¬v344 ∨ v288 ∨ v293)
    (c93 : ¬v334 ∨ ¬v344 ∨ ¬v354 ∨ ¬v298 ∨ v293 ∨ v308)
    (c94 : ¬v342 ∨ ¬v364 ∨ v292 ∨ ¬v306 ∨ ¬v344 ∨ v308)
    (c95 : ¬v342 ∨ ¬v344 ∨ v292 ∨ ¬v308 ∨ v306 ∨ v364)
    (c96 : ¬v292 ∨ v342 ∨ ¬v308 ∨ v306 ∨ v344 ∨ v364)
    (c97 : v300 ∨ ¬v295 ∨ ¬v303 ∨ v296 ∨ v299 ∨ ¬v294)
    (c98 : ¬v304 ∨ ¬v301 ∨ v347 ∨ ¬v356 ∨ v297 ∨ ¬v350)
    (c99 : ¬v347 ∨ ¬v300 ∨ v358 ∨ ¬v294 ∨ v301 ∨ ¬v346)
    (c100 : v297 ∨ ¬v358 ∨ ¬v347 ∨ v301 ∨ v306 ∨ v352)
    (c101 : ¬v347 ∨ v358 ∨ ¬v297 ∨ v306 ∨ v352 ∨ v301)
    (c102 : v349 ∨ v296 ∨ v352 ∨ ¬v303 ∨ v306 ∨ v361)
    (c103 : ¬v301 ∨ ¬v356 ∨ ¬v357 ∨ ¬v299 ∨ v302 ∨ v360)
    (c104 : ¬v360 ∨ ¬v358 ∨ ¬v308 ∨ v301 ∨ v306 ∨ v364)
    (c105 : v304 ∨ ¬v361 ∨ ¬v364 ∨ ¬v306 ∨ ¬v363 ∨ v308)
    (c106 : v311 ∨ ¬v316 ∨ ¬v331 ∨ ¬v339 ∨ ¬v349 ∨ v324)
    (c107 : ¬v312 ∨ ¬v339 ∨ v361 ∨ v327 ∨ v342 ∨ v324)
    (c108 : ¬v341 ∨ ¬v326 ∨ ¬v362 ∨ ¬v324 ∨ v311 ∨ v339)
    (c109 : v362 ∨ ¬v339 ∨ v341 ∨ v324 ∨ v326 ∨ ¬v311)
    (c110 : v362 ∨ ¬v339 ∨ ¬v328 ∨ ¬v343 ∨ v324 ∨ v312)
    (c111 : v343 ∨ v314 ∨ v344 ∨ ¬v328 ∨ v329 ∨ v364)
    (c112 : ¬v343 ∨ ¬v364 ∨ ¬v314 ∨ ¬v329 ∨ ¬v344 ∨ v328)
    (c113 : ¬v317 ∨ ¬v349 ∨ v324 ∨ v327 ∨ v352 ∨ v361)
    (c114 : v354 ∨ ¬v352 ∨ ¬v364 ∨ ¬v342 ∨ ¬v333 ∨ ¬v344)
    (c115 : v339 ∨ ¬v364 ∨ ¬v362 ∨ v343 ∨ ¬v342 ∨ ¬v361)
    (c116 : v343 ∨ ¬v363 ∨ v364 ∨ v344 ∨ v362 ∨ v341)
    (c117 : ¬v345 ∨ ¬v352 ∨ v347 ∨ v346 ∨ ¬v350 ∨ v349)
    (c118 : v345 ∨ ¬v361 ∨ v355 ∨ v349 ∨ ¬v350 ∨ v356)
    (c119 : ¬v355 ∨ ¬v358 ∨ ¬v349 ∨ ¬v346 ∨ v352 ∨ v361)
    (c120 : v356 ∨ ¬v352 ∨ ¬v358 ∨ ¬v361 ∨ ¬v350 ∨ v347)
    (c121 : ¬v350 ∨ v354 ∨ v356 ∨ ¬v363 ∨ ¬v347 ∨ v360)
    (c122 : v350 ∨ ¬v364 ∨ ¬v363 ∨ ¬v352 ∨ ¬v361 ∨ v354)
    (c123 : v356 ∨ ¬v358 ∨ v363 ∨ v361 ∨ v360 ∨ v364)
    (c124 : ¬v356 ∨ ¬v360 ∨ v363 ∨ v358 ∨ v361 ∨ v364)
    (c125 : ¬v260 ∨ v247 ∨ ¬v246 ∨ v288)
    (c126 : v260 ∨ v246 ∨ ¬v247 ∨ ¬v288)
    (c127 : v294 ∨ ¬v266 ∨ v248 ∨ ¬v247)
    (c128 : v266 ∨ v247 ∨ ¬v248 ∨ ¬v294)
    (c129 : ¬v270 ∨ v298 ∨ v252 ∨ ¬v247)
    (c130 : ¬v299 ∨ v248 ∨ ¬v249 ∨ v271)
    (c131 : ¬v275 ∨ v303 ∨ v250 ∨ ¬v249)
    (c132 : ¬v303 ∨ v249 ∨ v275 ∨ ¬v250)
    (c133 : ¬v250 ∨ ¬v278 ∨ v251 ∨ v306)
    (c134 : ¬v306 ∨ v250 ∨ ¬v251 ∨ v278)
    (c135 : v308 ∨ ¬v280 ∨ ¬v251 ∨ v252)
    (c136 : v251 ∨ ¬v308 ∨ ¬v252 ∨ v280)
    (c137 : v254 ∨ ¬v253 ∨ ¬v260 ∨ v309)
    (c138 : ¬v268 ∨ v332 ∨ ¬v260 ∨ v263)
    (c139 : ¬v334 ∨ v260 ∨ v270 ∨ ¬v265)
    (c140 : v309 ∨ ¬v288 ∨ v282 ∨ ¬v281)
    (c141 : ¬v309 ∨ ¬v282 ∨ v281 ∨ v288)
    (c142 : v314 ∨ ¬v281 ∨ v287 ∨ ¬v293)
    (c143 : ¬v314 ∨ v293 ∨ v281 ∨ ¬v287)
    (c144 : v324 ∨ v285 ∨ ¬v303 ∨ ¬v284)
    (c145 : ¬v324 ∨ ¬v285 ∨ v284 ∨ v303)
    (c146 : ¬v286 ∨ ¬v308 ∨ v329 ∨ v287)
    (c147 : v286 ∨ ¬v329 ∨ ¬v287 ∨ v308)
    (c148 : v331 ∨ ¬v295 ∨ ¬v288 ∨ v290)
    (c149 : v333 ∨ ¬v297 ∨ ¬v288 ∨ v292)
    (c150 : v300 ∨ v294 ∨ ¬v346 ∨ ¬v296)
    (c151 : v295 ∨ ¬v296 ∨ ¬v349 ∨ v303)
    (c152 : ¬v296 ∨ v352 ∨ ¬v306 ∨ v297)
    (c153 : v354 ∨ v298 ∨ ¬v308 ∨ ¬v297)
    (c154 : v297 ∨ ¬v354 ∨ ¬v298 ∨ v308)
    (c155 : ¬v328 ∨ ¬v364 ∨ v327 ∨ v329)
    (c156 : v331 ∨ ¬v332 ∨ ¬v339 ∨ v349)
    (c157 : v339 ∨ ¬v349 ∨ v332 ∨ ¬v331)
    (c158 : v333 ∨ ¬v352 ∨ v342 ∨ ¬v332)
    (c159 : ¬v334 ∨ v333 ∨ v354 ∨ ¬v344)
    (c160 : v334 ∨ ¬v333 ∨ v344 ∨ ¬v354)
    (c161 : v347 ∨ ¬v358 ∨ ¬v346 ∨ v352)
    (c162 : v360 ∨ v347 ∨ ¬v354 ∨ ¬v348)
    (c163 : v348 ∨ ¬v360 ∨ ¬v347 ∨ v354)
    (c164 : ¬v356 ∨ v355 ∨ ¬v358 ∨ v361)
    (c165 : ¬v355 ∨ ¬v361 ∨ v358 ∨ v356)
    (c166 : ¬v357 ∨ ¬v360 ∨ v363 ∨ v356)
    (c167 : v357 ∨ ¬v356 ∨ v360 ∨ ¬v363)
    (c168 : ¬v363 ∨ ¬v362 ∨ v361 ∨ v364)
    (c169 : v362 ∨ ¬v364 ∨ v363 ∨ ¬v361)
    (c170 : ¬v341 ∨ v343 ∨ ¬v339 ∨ v362)
    (c171 : v339 ∨ ¬v362 ∨ v341 ∨ ¬v343)
    (c172 : ¬v342 ∨ ¬v343 ∨ v364 ∨ v344)
    (c173 : v342 ∨ ¬v364 ∨ ¬v344 ∨ v343)
    (c174 : v294 ∨ v247 ∨ v266 ∨ v248)
    (c175 : ¬v294 ∨ v247 ∨ v248 ∨ v266)
    (c176 : v247 ∨ ¬v266 ∨ v248 ∨ v294)
    (c177 : ¬v294 ∨ v247 ∨ ¬v266 ∨ v248)
    (c178 : v266 ∨ v247 ∨ ¬v248 ∨ v294)
    (c179 : v247 ∨ ¬v266 ∨ ¬v248 ∨ ¬v294)
    (c180 : v294 ∨ v266 ∨ v248 ∨ ¬v247)
    (c181 : ¬v294 ∨ ¬v266 ∨ ¬v247 ∨ v248)
    (c182 : v266 ∨ ¬v247 ∨ ¬v248 ∨ v294)
    (c183 : ¬v294 ∨ ¬v247 ∨ ¬v248 ∨ v266)
    (c184 : ¬v266 ∨ ¬v247 ∨ ¬v248 ∨ v294)
    (c185 : ¬v266 ∨ ¬v294 ∨ ¬v248 ∨ ¬v247)
    (c186 : v299 ∨ v271 ∨ v249 ∨ v248)
    (c187 : ¬v299 ∨ v248 ∨ v249 ∨ v271)
    (c188 : v299 ∨ v248 ∨ v249 ∨ ¬v271)
    (c189 : ¬v299 ∨ ¬v271 ∨ v248 ∨ v249)
    (c190 : v299 ∨ v271 ∨ ¬v249 ∨ v248)
    (c191 : ¬v299 ∨ ¬v271 ∨ ¬v249 ∨ v248)
    (c192 : v299 ∨ ¬v248 ∨ ¬v249 ∨ v271)
    (c193 : ¬v299 ∨ ¬v249 ∨ ¬v248 ∨ v271)
    (c194 : v299 ∨ ¬v271 ∨ ¬v249 ∨ ¬v248)
    (c195 : ¬v299 ∨ ¬v271 ∨ ¬v249 ∨ ¬v248)
    (c196 : v275 ∨ v249 ∨ v250 ∨ v303)
    (c197 : v249 ∨ ¬v303 ∨ v250 ∨ v275)
    (c198 : ¬v275 ∨ v249 ∨ v250 ∨ v303)
    (c199 : ¬v275 ∨ ¬v303 ∨ v249 ∨ v250)
    (c200 : v275 ∨ v249 ∨ ¬v250 ∨ v303)
    (c201 : ¬v275 ∨ ¬v303 ∨ ¬v250 ∨ v249)
    (c202 : v275 ∨ ¬v249 ∨ v250 ∨ v303)
    (c203 : v303 ∨ v275 ∨ ¬v250 ∨ ¬v249)
    (c204 : ¬v303 ∨ ¬v249 ∨ ¬v250 ∨ v275)
    (c205 : v303 ∨ ¬v275 ∨ ¬v250 ∨ ¬v249)
    (c206 : ¬v303 ∨ ¬v275 ∨ ¬v250 ∨ ¬v249)
    (c207 : v251 ∨ v250 ∨ v306 ∨ v278)
    (c208 : ¬v306 ∨ v251 ∨ v250 ∨ v278)
    (c209 : v250 ∨ ¬v278 ∨ v251 ∨ v306)
    (c210 : ¬v306 ∨ ¬v278 ∨ v251 ∨ v250)
    (c211 : v306 ∨ ¬v251 ∨ v278 ∨ v250)
    (c212 : ¬v306 ∨ ¬v278 ∨ ¬v251 ∨ v250)
    (c213 : v251 ∨ ¬v250 ∨ v306 ∨ v278)
    (c214 : ¬v306 ∨ ¬v278 ∨ ¬v250 ∨ v251)
    (c215 : v306 ∨ ¬v251 ∨ v278 ∨ ¬v250)
    (c216 : ¬v306 ∨ ¬v251 ∨ ¬v250 ∨ v278)
    (c217 : ¬v278 ∨ ¬v251 ∨ ¬v250 ∨ v306)
    (c218 : ¬v306 ∨ ¬v278 ∨ ¬v251 ∨ ¬v250)
    (c219 : v251 ∨ v308 ∨ v280 ∨ v252)
    (c220 : v251 ∨ v252 ∨ ¬v308 ∨ v280)
    (c221 : v251 ∨ v308 ∨ ¬v280 ∨ v252)
    (c222 : v251 ∨ ¬v280 ∨ ¬v308 ∨ v252)
    (c223 : v251 ∨ v308 ∨ ¬v252 ∨ v280)
    (c224 : v251 ∨ ¬v280 ∨ ¬v308 ∨ ¬v252)
    (c225 : v280 ∨ v252 ∨ ¬v251 ∨ v308)
    (c226 : ¬v308 ∨ ¬v280 ∨ ¬v251 ∨ v252)
    (c227 : v308 ∨ ¬v252 ∨ ¬v251 ∨ v280)
    (c228 : ¬v308 ∨ v280 ∨ ¬v251 ∨ ¬v252)
    (c229 : v308 ∨ ¬v252 ∨ ¬v251 ∨ ¬v280)
    (c230 : ¬v308 ∨ ¬v252 ∨ ¬v251 ∨ ¬v280)
    (c231 : ¬v246 ∨ v265 ∨ v252 ∨ ¬v293)
    (c232 : ¬v265 ∨ v246 ∨ ¬v252 ∨ v293)
    (c233 : v309 ∨ v282 ∨ v281 ∨ v288)
    (c234 : ¬v309 ∨ v282 ∨ v281 ∨ v288)
    (c235 : v309 ∨ ¬v282 ∨ v281 ∨ v288)
    (c236 : ¬v309 ∨ ¬v281 ∨ v282 ∨ ¬v288)
    (c237 : ¬v309 ∨ ¬v281 ∨ v288 ∨ ¬v282)
    (c238 : v309 ∨ ¬v281 ∨ ¬v288 ∨ ¬v282)
    (c239 : ¬v309 ∨ ¬v281 ∨ ¬v288 ∨ ¬v282)
    (c240 : v324 ∨ v284 ∨ ¬v303 ∨ v285)
    (c241 : ¬v324 ∨ v284 ∨ ¬v303 ∨ v285)
    (c242 : v284 ∨ ¬v285 ∨ v303 ∨ v324)
    (c243 : ¬v324 ∨ ¬v285 ∨ v284 ∨ ¬v303)
    (c244 : ¬v284 ∨ v303 ∨ v285 ∨ v324)
    (c245 : ¬v324 ∨ ¬v303 ∨ ¬v284 ∨ v285)
    (c246 : ¬v284 ∨ ¬v285 ∨ v303 ∨ v324)
    (c247 : ¬v284 ∨ v303 ∨ ¬v285 ∨ ¬v324)
    (c248 : ¬v303 ∨ ¬v285 ∨ ¬v284 ∨ v324)
    (c249 : ¬v324 ∨ ¬v285 ∨ ¬v303 ∨ ¬v284)
    (c250 : v327 ∨ ¬v286 ∨ ¬v306 ∨ v285)
    (c251 : ¬v327 ∨ v286 ∨ ¬v285 ∨ v306)
    (c252 : v286 ∨ v287 ∨ v308 ∨ v329)
    (c253 : v286 ∨ v287 ∨ ¬v329 ∨ v308)
    (c254 : v286 ∨ v287 ∨ ¬v308 ∨ v329)
    (c255 : v286 ∨ ¬v329 ∨ ¬v308 ∨ v287)
    (c256 : v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c257 : ¬v329 ∨ v286 ∨ ¬v287 ∨ ¬v308)
    (c258 : ¬v286 ∨ v287 ∨ v308 ∨ v329)
    (c259 : ¬v286 ∨ ¬v329 ∨ ¬v308 ∨ v287)
    (c260 : ¬v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c261 : ¬v286 ∨ ¬v329 ∨ ¬v287 ∨ v308)
    (c262 : ¬v286 ∨ ¬v308 ∨ v329 ∨ ¬v287)
    (c263 : ¬v329 ∨ ¬v287 ∨ ¬v308 ∨ ¬v286)
    (c264 : ¬v314 ∨ v281 ∨ ¬v293 ∨ v287)
    (c265 : v314 ∨ v281 ∨ v287 ∨ ¬v293)
    (c266 : ¬v314 ∨ v293 ∨ v287 ∨ v281)
    (c267 : v314 ∨ v281 ∨ v287 ∨ v293)
    (c268 : ¬v314 ∨ ¬v281 ∨ v287 ∨ ¬v293)
    (c269 : v314 ∨ ¬v281 ∨ v287 ∨ v293)
    (c270 : v281 ∨ ¬v293 ∨ ¬v287 ∨ ¬v314)
    (c271 : v314 ∨ v281 ∨ ¬v287 ∨ v293)
    (c272 : ¬v281 ∨ ¬v293 ∨ ¬v287 ∨ ¬v314)
    (c273 : v314 ∨ ¬v281 ∨ ¬v287 ∨ ¬v293)
    (c274 : ¬v314 ∨ v293 ∨ ¬v287 ∨ ¬v281)
    (c275 : ¬v281 ∨ v293 ∨ ¬v287 ∨ v314)
    : False := by
  have c276 : v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v286 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c252 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c277 : ¬v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v286 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c260 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c278 : v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v287 := by
      rcases c276 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c277 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c279 : ¬v250 ∨ ¬v251 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c216 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c215 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
  have c280 : ¬v252 ∨ v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c136 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c228 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd n0 a
  have c281 : v249 ∨ v250 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c198 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c196 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c282 : v278 ∨ v250 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c134 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c211 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c283 : v278 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v250 := by
      rcases c282 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c279 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c284 : v252 ∨ ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c222 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c226 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c285 : ¬v252 ∨ ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c230 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c224 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c286 : ¬v280 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v252 := by
      rcases c284 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c285 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c287 : v249 ∨ v250 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c199 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c197 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c288 : v250 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v303 := by
      rcases c287 with a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    rcases c281 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c289 : v280 ∨ v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c219 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    rcases c225 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
  have c290 : ¬v280 ∨ v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c221 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
    rcases c135 with a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
  have c291 : v252 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c290 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c289 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c292 : ¬v278 ∨ v251 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v250 := by
      rcases c133 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c209 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c293 : ¬v249 ∨ ¬v248 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v299 := by
      rcases c192 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c193 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c294 : v250 ∨ v251 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c208 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c207 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c295 : v275 ∨ ¬v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c204 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c203 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd n1 a
  have c296 : ¬v252 ∨ v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c280 with a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
    rcases c223 with a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
  have c297 : v252 ∨ v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v308 := by
      rcases c291 with a|a
      · exact absurd a n0
      · exact a
    rcases c220 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n2
  have c298 : v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c296 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c297 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c299 : ¬v250 ∨ ¬v251 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c218 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c217 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c300 : ¬v252 ∨ ¬v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c280 with a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
    rcases c227 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c301 : ¬v280 ∨ ¬v251 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd n0 a
      · exact a
    rcases c229 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c302 : ¬v252 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c301 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c300 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c303 : v284 ∨ v285 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v324 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c241 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c304 : ¬v284 ∨ v285 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v324 := by
      rcases c144 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c245 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c305 : v285 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v284 := by
      rcases c303 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c304 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c306 : ¬v286 ∨ ¬v287 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v329 := by
      rcases c262 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c263 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c307 : ¬v324 ∨ ¬v285 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v284 := by
      rcases c243 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c249 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u1 a
  have c308 : v303 ∨ ¬v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c131 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n1 a
    rcases c202 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c309 : v251 ∨ ¬v250 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c214 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c292 with a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
  have c310 : ¬v250 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c299 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c309 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c311 : ¬v275 ∨ ¬v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c206 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c205 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c312 : ¬v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v275 := by
      rcases c295 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c311 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c313 : ¬v303 ∨ v249 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c201 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c132 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
  have c314 : ¬v287 ∨ v308 ∨ ¬v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v286 := by
      rcases c261 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c147 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c315 : v248 ∨ v249 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c188 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
  have c316 : v248 ∨ v249 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c187 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c186 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c317 : v281 ∨ v287 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v314 := by
      rcases c264 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c265 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
  have c318 : v324 ∨ ¬v285 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v284 := by
      rcases c246 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    rcases c242 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c319 : ¬v324 ∨ ¬v285 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v284 := by
      rcases c145 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    rcases c247 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c320 : ¬v285 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v324 := by
      rcases c319 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c318 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c321 : v364 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c283 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v306 := by
      rcases c213 with a|a|a|a
      · exact absurd a u1
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
    have u6 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u8 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
    have u9 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u10 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u4
    have u11 : ¬v327 := by
      rcases c87 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd u5 a
    have u12 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u8
    rcases c250 with a|a|a|a
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd u5 a
    · exact absurd a u12
  have c322 : v251 ∨ v250 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c292 with a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    rcases c210 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c323 : ¬v286 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v278 := by
      rcases c321 with a|a
      · exact absurd a n1
      · exact a
    have u2 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
    have u4 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v308 := by
      rcases c291 with a|a
      · exact absurd a u4
      · exact a
    have u6 : ¬v287 := by
      rcases c306 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u7 : v329 := by
      rcases c146 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
    rcases c259 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd a u6
  have c324 : v287 ∨ v286 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v329 := by
      rcases c255 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c254 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c325 : ¬v314 ∨ ¬v287 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v281 := by
      rcases c270 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c272 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c326 : ¬v281 ∨ ¬v287 ∨ v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v314 := by
      rcases c274 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c275 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u1
  have c327 : v271 ∨ v248 ∨ ¬v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c130 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c190 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c328 : v271 ∨ ¬v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v248 := by
      rcases c327 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c293 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c329 : ¬v266 ∨ ¬v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c181 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c127 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c330 : v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c175 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c174 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c331 : ¬v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c177 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c176 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
  have c332 : v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v266 := by
      rcases c331 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c330 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c333 : v288 ∨ v281 ∨ v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v309 := by
      rcases c233 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c234 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c334 : ¬v288 ∨ ¬v247 ∨ ¬v251 ∨ v265 ∨ v292 ∨ ¬v293 ∨ v344 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v308 := by
      rcases c291 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v246 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n5 a
    have u4 : ¬v298 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u1
    have u5 : v297 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : v260 := by
      rcases c126 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd n0 a
    have u7 : v354 := by
      rcases c153 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd u5 a
    have u8 : v333 := by
      rcases c149 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact absurd a n4
    have u9 : ¬v334 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a u3
    rcases c160 with a|a|a|a
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n6
    · exact absurd u7 a
  have c335 : ¬v248 ∨ ¬v249 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c195 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c194 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c336 : ¬v282 ∨ v281 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v309 := by
      rcases c141 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c235 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c337 : v281 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v282 := by
      rcases c336 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c333 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c338 : ¬v281 ∨ ¬v287 ∨ ¬v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v314 := by
      rcases c325 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c273 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c339 : ¬v281 ∨ ¬v287 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v293 := by
      rcases c326 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c338 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c340 : v358 ∨ ¬v297 ∨ ¬v348 ∨ v352 ∨ ¬v354 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v278 := by
      rcases c321 with a|a
      · exact absurd a n6
      · exact a
    have u3 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u5 : v249 := by
      rcases c288 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : v271 := by
      rcases c328 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v308 := by
      rcases c291 with a|a
      · exact absurd a u6
      · exact a
    have u11 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v324 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    have u13 : ¬v248 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
    have u14 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u7
    have u16 : v247 := by
      rcases c332 with a|a
      · exact a
      · exact absurd a u13
    have u17 : ¬v361 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u8 a
    have u18 : ¬v266 := by
      rcases c329 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u13
    have u19 : v294 := by
      rcases c180 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd u16 a
    have u20 : ¬v301 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd u16 a
      · exact absurd a u13
    have u21 : v273 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd u4 a
    have u22 : ¬v347 := by
      rcases c101 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u20
    have u23 : v360 := by
      rcases c162 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd n4 a
      · exact absurd n2 a
    have u24 : ¬v356 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n6
    have u25 : ¬v357 := by
      rcases c166 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n5
      · exact absurd a u24
    have u26 : v274 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u9 a
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd u23 a
    have u27 : v270 := by
      rcases c72 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
      · exact absurd u23 a
      · exact absurd a u14
    have u28 : v298 := by
      rcases c129 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u6
      · exact absurd u16 a
    rcases c58 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd n4 a
    · exact absurd u10 a
    · exact absurd u27 a
    · exact absurd a u6
    · exact absurd a u14
  have c341 : v344 ∨ v245 ∨ ¬v293 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v278 := by
      rcases c321 with a|a
      · exact absurd a n3
      · exact a
    have u3 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u5 : v249 := by
      rcases c288 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : v271 := by
      rcases c328 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v308 := by
      rcases c291 with a|a
      · exact absurd a u6
      · exact a
    have u11 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v324 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    have u13 : ¬v284 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact absurd a u3
    have u14 : ¬v248 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
    have u15 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v287 := by
      rcases c324 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u10 a
    have u17 : ¬v329 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u16 a
      · exact absurd u10 a
    have u18 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u7
    have u19 : v247 := by
      rcases c332 with a|a
      · exact a
      · exact absurd a u14
    have u20 : ¬v281 := by
      rcases c339 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v314 := by
      rcases c325 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u22 : v328 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a u18
    have u23 : ¬v361 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u8 a
    have u24 : ¬v266 := by
      rcases c329 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u14
    have u25 : v288 := by
      rcases c337 with a|a
      · exact absurd a u20
      · exact a
    have u26 : v294 := by
      rcases c180 with a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd u19 a
    have u27 : v343 := by
      rcases c111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a n3
    have u28 : ¬v342 := by
      rcases c172 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a n3
      · exact absurd a n0
    have u29 : v264 := by
      rcases c71 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n3
    have u30 : ¬v292 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
    have u31 : v291 := by
      rcases c75 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u11 a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u7
    have u32 : v265 := by
      rcases c334 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd u19 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u30
      · exact absurd n2 a
      · exact absurd a n0
    have u33 : ¬v263 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u27 a
      · exact absurd u29 a
      · exact absurd a u28
      · exact absurd a n0
    have u34 : ¬v246 := by
      rcases c49 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd n2 a
      · exact absurd u29 a
      · exact absurd a u30
      · exact absurd a n0
    have u35 : ¬v298 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd n2 a
      · exact absurd u19 a
      · exact absurd u25 a
      · exact absurd a u6
    have u36 : ¬v296 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd u19 a
      · exact absurd a u34
      · exact absurd a u3
    have u37 : v260 := by
      rcases c126 with a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u19 a
      · exact absurd u25 a
    have u38 : v297 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd u4 a
      · exact absurd u19 a
      · exact absurd u25 a
    have u39 : ¬v290 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u34
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a u13
    have u40 : ¬v270 := by
      rcases c129 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u6
      · exact absurd u19 a
    have u41 : ¬v332 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd u37 a
    have u42 : ¬v268 := by
      rcases c138 with a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u37 a
      · exact absurd a u33
    have u43 : ¬v301 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u38 a
      · exact absurd u4 a
      · exact absurd u19 a
      · exact absurd a u14
    have u44 : v354 := by
      rcases c153 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u10 a
      · exact absurd u38 a
    have u45 : v295 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u5 a
      · exact absurd u25 a
      · exact absurd u19 a
      · exact absurd a u34
    have u46 : v348 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u19 a
      · exact absurd a u40
      · exact absurd a u35
      · exact absurd u26 a
    have u47 : v346 := by
      rcases c52 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd a u24
      · exact absurd u19 a
      · exact absurd a u36
      · exact absurd u26 a
    have u48 : ¬v352 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u2 a
      · exact absurd a u33
      · exact absurd a u41
      · exact absurd a u28
    have u49 : v331 := by
      rcases c148 with a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u25 a
      · exact absurd a u39
    have u50 : v349 := by
      rcases c102 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u48
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u23
    have u51 : v339 := by
      rcases c157 with a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd a u41
      · exact absurd u49 a
    have u52 : ¬v312 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a u12
    have u53 : v362 := by
      rcases c110 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u22 a
      · exact absurd u27 a
      · exact absurd a u12
      · exact absurd a u52
    have u54 : ¬v363 := by
      rcases c168 with a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd a u23
      · exact absurd a n3
    have u55 : v358 := by
      rcases c340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u46 a
      · exact absurd a u48
      · exact absurd u44 a
      · exact absurd a u54
      · exact absurd a n3
    have u56 : ¬v355 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u50 a
      · exact absurd u47 a
      · exact absurd a u48
      · exact absurd a u23
    have u57 : ¬v360 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u10 a
      · exact absurd a u43
      · exact absurd a u7
      · exact absurd a n3
    have u58 : ¬v356 := by
      rcases c164 with a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u55 a
      · exact absurd a u23
    rcases c123 with a|a|a|a|a|a
    · exact absurd a u58
    · exact absurd u55 a
    · exact absurd a u54
    · exact absurd a u23
    · exact absurd a u57
    · exact absurd a n3
  have c342 : ¬v358 ∨ v292 ∨ v301 ∨ ¬v339 ∨ v342 ∨ ¬v346 ∨ ¬v349 ∨ v352 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a n8
    have u2 : v278 := by
      rcases c321 with a|a
      · exact absurd a n8
      · exact a
    have u3 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u5 : v249 := by
      rcases c288 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : v271 := by
      rcases c328 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v308 := by
      rcases c291 with a|a
      · exact absurd a u6
      · exact a
    have u11 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v324 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    have u13 : ¬v248 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
    have u14 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v287 := by
      rcases c324 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u10 a
    have u16 : ¬v329 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u15 a
      · exact absurd u10 a
    have u17 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u7
    have u18 : ¬v284 := by
      rcases c248 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact a
      · exact absurd a u12
    have u19 : v247 := by
      rcases c332 with a|a
      · exact a
      · exact absurd a u13
    have u20 : ¬v281 := by
      rcases c339 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v328 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u1
      · exact absurd a u17
    have u22 : ¬v361 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u8 a
    have u23 : v325 := by
      rcases c80 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u17
    have u24 : v288 := by
      rcases c337 with a|a
      · exact absurd a u20
      · exact a
    have u25 : ¬v312 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u12
    have u26 : ¬v326 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u15 a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u16
    have u27 : ¬v314 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u11 a
      · exact absurd u15 a
      · exact a
      · exact absurd a u20
      · exact absurd u21 a
    have u28 : v293 := by
      rcases c271 with a|a|a|a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd u15 a
      · exact a
    have u29 : ¬v355 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u22
    have u30 : ¬v360 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n8
    have u31 : ¬v356 := by
      rcases c164 with a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd n0 a
      · exact absurd a u22
    have u32 : ¬v317 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u22
    have u33 : v363 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd n0 a
      · exact a
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a n8
    have u34 : ¬v362 := by
      rcases c168 with a|a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd a u22
      · exact absurd a n8
    have u35 : ¬v343 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd n3 a
      · exact absurd u21 a
      · exact a
      · exact absurd a u12
      · exact absurd a u25
    have u36 : ¬v341 := by
      rcases c170 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd n3 a
      · exact absurd a u34
    have u37 : ¬v311 := by
      rcases c109 with a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd n3 a
      · exact absurd a u36
      · exact absurd a u12
      · exact absurd a u26
      · exact a
    have u38 : v344 := by
      rcases c116 with a|a|a|a|a|a
      · exact absurd a u35
      · exact absurd u33 a
      · exact absurd a n8
      · exact a
      · exact absurd a u34
      · exact absurd a u36
    have u39 : ¬v265 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u10 a
      · exact absurd u28 a
      · exact absurd a u6
      · exact absurd a u14
    have u40 : ¬v246 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u6
      · exact absurd u28 a
    have u41 : ¬v245 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd u15 a
      · exact absurd u28 a
      · exact absurd a u6
      · exact absurd a u20
    have u42 : v282 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd a u41
      · exact absurd a u40
      · exact a
      · exact absurd u24 a
      · exact absurd a u20
      · exact absurd u19 a
    have u43 : ¬v290 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd a u40
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a u18
    have u44 : v316 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u11 a
      · exact absurd a u18
      · exact absurd u42 a
      · exact absurd a u12
    have u45 : v295 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd u5 a
      · exact absurd u24 a
      · exact absurd u19 a
      · exact absurd a u40
    have u46 : ¬v331 := by
      rcases c106 with a|a|a|a|a|a
      · exact absurd a u37
      · exact absurd u44 a
      · exact a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact absurd a u12
    rcases c148 with a|a|a|a
    · exact absurd a u46
    · exact absurd u45 a
    · exact absurd u24 a
    · exact absurd a u43
  have c343 : v356 ∨ ¬v273 ∨ v274 ∨ ¬v339 ∨ v342 ∨ ¬v360 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v278 := by
      rcases c321 with a|a
      · exact absurd a n6
      · exact a
    have u3 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u5 : v249 := by
      rcases c288 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : v271 := by
      rcases c328 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v308 := by
      rcases c291 with a|a
      · exact absurd a u6
      · exact a
    have u11 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v324 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    have u13 : ¬v248 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
    have u14 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v287 := by
      rcases c324 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u10 a
    have u16 : ¬v329 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u15 a
      · exact absurd u10 a
    have u17 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u7
    have u18 : ¬v257 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd u11 a
    have u19 : v247 := by
      rcases c332 with a|a
      · exact a
      · exact absurd a u13
    have u20 : ¬v281 := by
      rcases c339 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v328 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u1
      · exact absurd a u17
    have u22 : ¬v361 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u8 a
    have u23 : v288 := by
      rcases c337 with a|a
      · exact absurd a u20
      · exact a
    have u24 : ¬v312 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u12
    have u25 : v357 := by
      rcases c73 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n5 a
    have u26 : ¬v284 := by
      rcases c248 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact a
      · exact absurd a u12
    have u27 : v325 := by
      rcases c80 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a u17
    have u28 : ¬v326 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u15 a
      · exact absurd a u26
      · exact absurd a u1
      · exact absurd a u16
    have u29 : ¬v314 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u11 a
      · exact absurd u15 a
      · exact a
      · exact absurd a u20
      · exact absurd u21 a
    have u30 : v293 := by
      rcases c271 with a|a|a|a
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd u15 a
      · exact a
    have u31 : v363 := by
      rcases c166 with a|a|a|a
      · exact absurd u25 a
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
    have u32 : ¬v362 := by
      rcases c168 with a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd a u22
      · exact absurd a n6
    have u33 : ¬v343 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd n3 a
      · exact absurd u21 a
      · exact a
      · exact absurd a u12
      · exact absurd a u24
    have u34 : ¬v341 := by
      rcases c170 with a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd n3 a
      · exact absurd a u32
    have u35 : ¬v311 := by
      rcases c109 with a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd n3 a
      · exact absurd a u34
      · exact absurd a u12
      · exact absurd a u28
      · exact a
    have u36 : v344 := by
      rcases c116 with a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd u31 a
      · exact absurd a n6
      · exact a
      · exact absurd a u32
      · exact absurd a u34
    have u37 : ¬v265 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u10 a
      · exact absurd u30 a
      · exact absurd a u6
      · exact absurd a u14
    have u38 : ¬v246 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u6
      · exact absurd u30 a
    have u39 : ¬v245 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u15 a
      · exact absurd u30 a
      · exact absurd a u6
      · exact absurd a u20
    have u40 : v253 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u30 a
      · exact absurd a u20
      · exact absurd a u38
      · exact absurd a u29
    have u41 : v291 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u38
      · exact absurd a u3
      · exact absurd u11 a
      · exact absurd a u20
    have u42 : v260 := by
      rcases c126 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u19 a
      · exact absurd u23 a
    have u43 : v282 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd a u39
      · exact absurd a u38
      · exact a
      · exact absurd u23 a
      · exact absurd a u20
      · exact absurd u19 a
    have u44 : ¬v290 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u38
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a u26
    have u45 : ¬v263 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd a u39
      · exact absurd a u38
      · exact absurd a u3
      · exact absurd a u18
    have u46 : ¬v296 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u23 a
      · exact absurd u19 a
      · exact absurd a u38
      · exact absurd a u3
    have u47 : ¬v332 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u23 a
      · exact absurd a u38
      · exact absurd a u45
      · exact absurd u42 a
    have u48 : ¬v309 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd u40 a
      · exact absurd u23 a
      · exact a
      · exact absurd u42 a
      · exact absurd a u38
      · exact absurd a u20
    have u49 : ¬v268 := by
      rcases c138 with a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd u42 a
      · exact absurd a u45
    have u50 : v295 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u5 a
      · exact absurd u23 a
      · exact absurd u19 a
      · exact absurd a u38
    have u51 : ¬v352 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u2 a
      · exact absurd a u45
      · exact absurd a u47
      · exact absurd a n4
    have u52 : v349 := by
      rcases c102 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd a u51
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u22
    have u53 : v254 := by
      rcases c137 with a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u42 a
      · exact absurd a u48
    have u54 : v331 := by
      rcases c148 with a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd u23 a
      · exact absurd a u44
    have u55 : ¬v317 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd u11 a
      · exact absurd u43 a
      · exact absurd a u39
      · exact absurd a u18
    have u56 : ¬v316 := by
      rcases c106 with a|a|a|a|a|a
      · exact absurd a u35
      · exact a
      · exact absurd u54 a
      · exact absurd n3 a
      · exact absurd u52 a
      · exact absurd a u12
    rcases c79 with a|a|a|a|a|a
    · exact absurd a u56
    · exact absurd a u55
    · exact absurd u11 a
    · exact absurd a u26
    · exact absurd u43 a
    · exact absurd a u12
  have c344 : ¬v293 ∨ v245 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v344 := by
      rcases c341 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u2 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v278 := by
      rcases c321 with a|a
      · exact absurd a n2
      · exact a
    have u4 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u6 : v249 := by
      rcases c288 with a|a
      · exact absurd a u4
      · exact a
    have u7 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
    have u10 : v271 := by
      rcases c328 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v308 := by
      rcases c291 with a|a
      · exact absurd a u7
      · exact a
    have u12 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v324 := by
      rcases c307 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u9 a
    have u14 : ¬v248 := by
      rcases c335 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
    have u15 : ¬v299 := by
      rcases c191 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u6 a
      · exact absurd a u14
    have u16 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v287 := by
      rcases c324 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u11 a
    have u18 : ¬v329 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd u11 a
    have u19 : ¬v265 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u16
    have u20 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u8
    have u21 : ¬v284 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact absurd a u4
    have u22 : ¬v257 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u12 a
    have u23 : v247 := by
      rcases c332 with a|a
      · exact a
      · exact absurd a u14
    have u24 : ¬v314 := by
      rcases c325 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n0 a
    have u25 : ¬v281 := by
      rcases c339 with a|a
      · exact a
      · exact absurd u17 a
    have u26 : ¬v246 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd n0 a
    have u27 : v328 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u20
    have u28 : ¬v361 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd u9 a
    have u29 : v325 := by
      rcases c80 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u20
    have u30 : ¬v266 := by
      rcases c329 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u14
    have u31 : v288 := by
      rcases c337 with a|a
      · exact absurd a u25
      · exact a
    have u32 : ¬v290 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd u6 a
      · exact absurd a u25
      · exact absurd a u21
    have u33 : v253 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd n0 a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u24
    have u34 : v291 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a u25
    have u35 : ¬v292 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u25
      · exact absurd a u2
    have u36 : ¬v326 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u17 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u18
    have u37 : v294 := by
      rcases c180 with a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd u23 a
    have u38 : ¬v298 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd n0 a
      · exact absurd u23 a
      · exact absurd u31 a
      · exact absurd a u7
    have u39 : v260 := by
      rcases c126 with a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd u31 a
    have u40 : v282 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u26
      · exact a
      · exact absurd u31 a
      · exact absurd a u25
      · exact absurd u23 a
    have u41 : ¬v309 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd u31 a
      · exact a
      · exact absurd u39 a
      · exact absurd a u26
      · exact absurd a u25
    have u42 : v295 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u6 a
      · exact absurd u31 a
      · exact absurd u23 a
      · exact absurd a u26
    have u43 : ¬v263 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u22
    have u44 : ¬v296 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u31 a
      · exact absurd u23 a
      · exact absurd a u26
      · exact absurd a u4
    have u45 : ¬v332 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u31 a
      · exact absurd a u26
      · exact absurd a u43
      · exact absurd u39 a
    have u46 : v297 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u35
      · exact absurd u5 a
      · exact absurd u23 a
      · exact absurd u31 a
    have u47 : ¬v342 := by
      rcases c95 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u35
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a n2
    have u48 : ¬v270 := by
      rcases c129 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u7
      · exact absurd u23 a
    have u49 : v254 := by
      rcases c137 with a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u39 a
      · exact absurd a u41
    have u50 : ¬v268 := by
      rcases c138 with a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u39 a
      · exact absurd a u43
    have u51 : ¬v317 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd u12 a
      · exact absurd u40 a
      · exact absurd a n1
      · exact absurd a u22
    have u52 : v300 := by
      rcases c97 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u9 a
      · exact absurd a u44
      · exact absurd a u15
      · exact absurd u37 a
    have u53 : v331 := by
      rcases c148 with a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u31 a
      · exact absurd a u32
    have u54 : ¬v352 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u3 a
      · exact absurd a u43
      · exact absurd a u45
      · exact absurd a u47
    have u55 : v349 := by
      rcases c102 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a u54
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u28
    have u56 : ¬v301 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd u46 a
      · exact absurd u5 a
      · exact absurd u23 a
      · exact absurd a u14
    have u57 : v354 := by
      rcases c153 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u11 a
      · exact absurd u46 a
    have u58 : v348 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u23 a
      · exact absurd a u48
      · exact absurd a u38
      · exact absurd u37 a
    have u59 : v346 := by
      rcases c52 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd a u30
      · exact absurd u23 a
      · exact absurd a u44
      · exact absurd u37 a
    have u60 : v316 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd u12 a
      · exact absurd a u21
      · exact absurd u40 a
      · exact absurd a u13
    have u61 : v339 := by
      rcases c157 with a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd a u45
      · exact absurd u53 a
    have u62 : ¬v358 := by
      rcases c342 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u56
      · exact absurd u61 a
      · exact absurd a u47
      · exact absurd u59 a
      · exact absurd u55 a
      · exact absurd a u54
      · exact absurd a n2
    have u63 : v273 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd a u62
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd u5 a
    have u64 : ¬v347 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd a u62
      · exact absurd u37 a
      · exact absurd a u56
      · exact absurd u59 a
    have u65 : ¬v312 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u47
      · exact absurd a u13
    have u66 : v311 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u60 a
      · exact absurd u53 a
      · exact absurd u61 a
      · exact absurd u55 a
      · exact absurd a u13
    have u67 : v360 := by
      rcases c162 with a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd u57 a
      · exact absurd u58 a
    have u68 : ¬v274 := by
      rcases c72 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u57 a
      · exact absurd a u48
      · exact absurd u67 a
      · exact absurd a u16
    have u69 : v356 := by
      rcases c343 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd a u68
      · exact absurd u61 a
      · exact absurd a u47
      · exact absurd u67 a
      · exact absurd a n2
    have u70 : v363 := by
      rcases c124 with a|a|a|a|a|a
      · exact absurd u69 a
      · exact absurd u67 a
      · exact a
      · exact absurd a u62
      · exact absurd a u28
      · exact absurd a n2
    have u71 : ¬v362 := by
      rcases c168 with a|a|a|a
      · exact absurd u70 a
      · exact a
      · exact absurd a u28
      · exact absurd a n2
    have u72 : ¬v343 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd a u71
      · exact absurd u61 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u13
      · exact absurd a u65
    have u73 : v341 := by
      rcases c109 with a|a|a|a|a|a
      · exact absurd a u71
      · exact absurd u61 a
      · exact a
      · exact absurd a u13
      · exact absurd a u36
      · exact absurd u66 a
    rcases c170 with a|a|a|a
    · exact absurd u73 a
    · exact absurd a u72
    · exact absurd u61 a
    · exact absurd a u71
  have c345 : v293 ∨ v281 ∨ ¬v287 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v314 := by
      rcases c271 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c143 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
  have c346 : v364 := by
    by_contra hc
    have u1 : ¬v286 := by
      rcases c323 with a|a
      · exact a
      · exact absurd a hc
    have u2 : v278 := by
      rcases c321 with a|a
      · exact absurd a hc
      · exact a
    have u3 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v251 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    have u5 : v249 := by
      rcases c288 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : v308 := by
      rcases c291 with a|a
      · exact absurd a u6
      · exact a
    have u10 : v285 := by
      rcases c305 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v280 := by
      rcases c286 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v287 := by
      rcases c324 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u9 a
    have u13 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u10 a
      · exact absurd a u7
    have u14 : v258 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u7
    have u15 : ¬v281 := by
      rcases c339 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v293 := by
      rcases c345 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u12 a
    have u17 : v245 := by
      rcases c344 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a hc
    have u18 : ¬v314 := by
      rcases c325 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u16 a
    have u19 : ¬v259 := by
      rcases c28 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u11
    have u20 : v246 := by
      rcases c10 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u12 a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u15
    have u21 : ¬v265 := by
      rcases c14 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a u18
    rcases c231 with a|a|a|a
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd u16 a
  have c347 : v329 ∨ ¬v285 ∨ v286 ∨ ¬v287 ∨ v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v364 := c346
    have u2 : ¬v328 := by
      rcases c155 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
    rcases c85 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n4
  have c348 : ¬v287 ∨ ¬v285 ∨ v306 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v286 := by
      rcases c306 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v329 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v327 := by
      rcases c251 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
    rcases c347 with a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u3
  have c349 : ¬v286 ∨ v287 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v329 := by
      rcases c146 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c259 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c350 : v287 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v286 := by
      rcases c324 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c349 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c351 : ¬v251 := by
    by_contra hc
    have u1 : v278 := by
      rcases c283 with a|a
      · exact a
      · exact absurd hc a
    have u2 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v252 := by
      rcases c302 with a|a
      · exact a
      · exact absurd hc a
    have u4 : v308 := by
      rcases c291 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v306 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd hc a
      · exact absurd a u2
    have u6 : v249 := by
      rcases c288 with a|a
      · exact absurd a u2
      · exact a
    have u7 : v287 := by
      rcases c350 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v303 := by
      rcases c308 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
    have u9 : ¬v285 := by
      rcases c348 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
    rcases c305 with a|a
    · exact absurd a u9
    · exact absurd u8 a
  have c352 : v306 := by
    by_contra hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v278 := by
      rcases c60 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a hc
      · exact absurd u3 a
      · exact absurd a u4
    have u6 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd u5 a
    rcases c322 with a|a|a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd u5 a
  have c353 : v293 ∨ v281 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v329 := by
      rcases c278 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
    have u6 : ¬v314 := by
      rcases c266 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
    rcases c267 with a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
  have c354 : v281 := by
    by_contra hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v329 := by
      rcases c278 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
    have u6 : ¬v293 := by
      rcases c317 with a|a|a
      · exact absurd a hc
      · exact absurd a u5
      · exact a
    rcases c353 with a|a
    · exact absurd a u6
    · exact absurd a hc
  have c355 : v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v271 := by
      rcases c315 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c316 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c356 : v294 ∨ ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v266 := by
      rcases c182 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c184 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c357 : ¬v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v281 := c354
    have u2 : v309 := by
      rcases c238 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c239 with a|a|a|a
    · exact absurd u2 a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c358 : v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v281 := c354
    have u2 : ¬v309 := by
      rcases c236 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c140 with a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd u1 a
  have c359 : ¬v288 := by
    by_contra hc
    have u1 : v282 := by
      rcases c358 with a|a
      · exact a
      · exact absurd hc a
    rcases c357 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c360 : ¬v278 := by
    by_contra hc
    have u1 : ¬v251 := c351
    have u2 : ¬v250 := by
      rcases c310 with a|a
      · exact a
      · exact absurd hc a
    rcases c322 with a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd hc a
  have c361 : ¬v294 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := c351
    have u2 : ¬v278 := c360
    have u3 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u4 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v248 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u4
    have u6 : ¬v266 := by
      rcases c185 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c183 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd a u6
  have c362 : ¬v247 := by
    by_contra hc
    have u1 : ¬v251 := c351
    have u2 : ¬v278 := c360
    have u3 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u4 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v248 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u4
    have u6 : v294 := by
      rcases c356 with a|a|a
      · exact a
      · exact absurd hc a
      · exact absurd u5 a
    rcases c361 with a|a
    · exact absurd u6 a
    · exact absurd hc a
  have c363 : ¬v294 := by
    by_contra hc
    have u1 : ¬v251 := c351
    have u2 : ¬v278 := c360
    have u3 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u4 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v248 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u4
    have u6 : ¬v247 := c362
    have u7 : v266 := by
      rcases c128 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd hc a
    rcases c179 with a|a|a|a
    · exact absurd a u6
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd hc a
  have c364 : v246 ∨ ¬v263 ∨ v291 ∨ v293 ∨ v343 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u3
    have u5 : ¬v265 := by
      rcases c232 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n3
    rcases c46 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c367 : v293 ∨ v334 ∨ v344 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u3
    have u5 : ¬v288 := c359
    have u6 : ¬v247 := c362
    have u7 : v265 := by
      rcases c51 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n0
    have u8 : v246 := by
      rcases c232 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
    have u9 : ¬v260 := by
      rcases c125 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a u5
    rcases c41 with a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd u8 a
  have c368 : ¬v347 ∨ ¬v299 ∨ ¬v301 ∨ v302 ∨ v348 ∨ ¬v350 ∨ v354 ∨ ¬v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v360 := by
      rcases c163 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
    have u2 : v356 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd n7 a
      · exact absurd n0 a
      · exact absurd a u1
    have u3 : ¬v357 := by
      rcases c103 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
    rcases c167 with a|a|a|a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd n7 a
  have c369 : ¬v332 ∨ v293 ∨ v334 ∨ ¬v352 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u8 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v306 := c352
    have u10 : v281 := c354
    have u11 : ¬v288 := c359
    have u12 : ¬v278 := c360
    have u13 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : v248 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u14
    have u17 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u15
    have u18 : v327 := by
      rcases c250 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a u17
    have u19 : ¬v328 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a u17
      · exact absurd a u7
    have u20 : ¬v247 := c362
    have u21 : ¬v294 := c363
    have u22 : v266 := by
      rcases c178 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u21
    have u23 : v314 := by
      rcases c269 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n1
    have u24 : v344 := by
      rcases c367 with a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u25 : ¬v343 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u23 a
      · exact absurd u5 a
      · exact absurd u24 a
      · exact absurd a u19
    have u26 : v342 := by
      rcases c173 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u24 a
      · exact absurd a u25
    have u27 : v292 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
      · exact absurd u24 a
      · exact absurd a u4
    have u28 : ¬v291 := by
      rcases c76 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u17
    have u29 : v263 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u26 a
    have u30 : v246 := by
      rcases c364 with a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u25
    have u31 : v289 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u21
    have u32 : ¬v260 := by
      rcases c125 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u30 a
      · exact absurd a u11
    have u33 : ¬v265 := by
      rcases c41 with a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u30 a
    have u34 : v298 := by
      rcases c38 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n1
    have u35 : v245 := by
      rcases c11 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n1
    have u36 : v301 := by
      rcases c43 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u16 a
      · exact absurd u30 a
      · exact absurd a u2
      · exact absurd u27 a
    have u37 : ¬v297 := by
      rcases c35 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd u30 a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u11
    have u38 : ¬v300 := by
      rcases c42 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u13 a
      · exact absurd u16 a
      · exact absurd u30 a
      · exact absurd a u28
    have u39 : v296 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u28
    have u40 : ¬v302 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u6 a
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a u21
    have u41 : v284 := by
      rcases c22 with a|a|a|a|a|a
      · exact absurd u35 a
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u15
    have u42 : ¬v354 := by
      rcases c154 with a|a|a|a
      · exact absurd a u37
      · exact a
      · exact absurd u34 a
      · exact absurd a u4
    have u43 : ¬v346 := by
      rcases c150 with a|a|a|a
      · exact absurd a u38
      · exact absurd a u21
      · exact a
      · exact absurd u39 a
    have u44 : v324 := by
      rcases c244 with a|a|a|a
      · exact absurd u41 a
      · exact absurd a u15
      · exact absurd a u17
      · exact a
    have u45 : v361 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u44 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd u18 a
    have u46 : ¬v282 := by
      rcases c1 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd u35 a
      · exact absurd u10 a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
    have u47 : v283 := by
      rcases c15 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd u35 a
      · exact absurd a u21
    have u48 : ¬v295 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd a u46
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd u41 a
    have u49 : v299 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u47 a
      · exact a
      · exact absurd u16 a
      · exact absurd u35 a
      · exact absurd a u14
      · exact absurd u41 a
    have u50 : ¬v349 := by
      rcases c151 with a|a|a|a
      · exact absurd a u48
      · exact absurd u39 a
      · exact a
      · exact absurd a u15
    have u51 : ¬v331 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd u39 a
      · exact absurd a u50
    have u52 : ¬v339 := by
      rcases c156 with a|a|a|a
      · exact absurd a u51
      · exact absurd n0 a
      · exact a
      · exact absurd a u50
    have u53 : ¬v362 := by
      rcases c115 with a|a|a|a|a|a
      · exact absurd a u52
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd u26 a
      · exact absurd u45 a
    have u54 : v363 := by
      rcases c169 with a|a|a|a
      · exact absurd a u53
      · exact absurd u1 a
      · exact a
      · exact absurd u45 a
    have u55 : v304 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u1 a
      · exact absurd u9 a
      · exact absurd u54 a
      · exact absurd a u4
    have u56 : v350 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u54 a
      · exact absurd n3 a
      · exact absurd u45 a
      · exact absurd a u42
    have u57 : v270 := by
      rcases c37 with a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd u6 a
      · exact absurd a u20
      · exact absurd u30 a
      · exact absurd a u33
    have u58 : ¬v348 := by
      rcases c56 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact a
      · exact absurd u22 a
      · exact absurd u57 a
      · exact absurd a u20
      · exact absurd a u21
    have u59 : ¬v347 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd u36 a
      · exact absurd a u40
      · exact absurd a u58
      · exact absurd u56 a
      · exact absurd a u42
      · exact absurd u54 a
    have u60 : ¬v356 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd u55 a
      · exact absurd u36 a
      · exact absurd a u59
      · exact a
      · exact absurd a u37
      · exact absurd u56 a
    have u61 : ¬v358 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a u60
      · exact absurd n3 a
      · exact a
      · exact absurd u45 a
      · exact absurd u56 a
      · exact absurd a u59
    have u62 : ¬v345 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u59
      · exact absurd a u43
      · exact absurd u56 a
      · exact absurd a u50
    have u63 : ¬v355 := by
      rcases c165 with a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd a u61
      · exact absurd a u60
    rcases c118 with a|a|a|a|a|a
    · exact absurd a u62
    · exact absurd u45 a
    · exact absurd a u63
    · exact absurd a u50
    · exact absurd u56 a
    · exact absurd a u60
  have c370 : ¬v344 ∨ v293 ∨ v334 ∨ ¬v352 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u8 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v306 := c352
    have u10 : v281 := c354
    have u11 : ¬v288 := c359
    have u12 : ¬v278 := c360
    have u13 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u15
    have u17 : v327 := by
      rcases c250 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a u16
    have u18 : ¬v328 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u7
    have u19 : ¬v247 := c362
    have u20 : v314 := by
      rcases c269 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n1
    have u21 : ¬v343 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact absurd a u18
    have u22 : v342 := by
      rcases c173 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a u21
    have u23 : v292 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact absurd a u4
    have u24 : ¬v291 := by
      rcases c76 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u16
    have u25 : v263 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u22 a
    have u26 : v246 := by
      rcases c364 with a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u21
    have u27 : v298 := by
      rcases c38 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n1
    have u28 : ¬v297 := by
      rcases c35 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u26 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u11
    have u29 : ¬v354 := by
      rcases c154 with a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u27 a
      · exact absurd a u4
    have u30 : ¬v332 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
    have u31 : v333 := by
      rcases c90 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u11
      · exact absurd u22 a
      · exact absurd u23 a
      · exact absurd a u24
    rcases c114 with a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd n3 a
    · exact absurd u1 a
    · exact absurd u22 a
    · exact absurd u31 a
    · exact absurd n0 a
  have c371 : ¬v265 ∨ ¬v246 ∨ v293 ∨ v334 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v288 := c359
    have u2 : ¬v247 := c362
    have u3 : ¬v260 := by
      rcases c125 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
    rcases c41 with a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
  have c372 : ¬v265 ∨ v293 ∨ v334 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u3
    have u5 : v246 := by
      rcases c232 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
    rcases c371 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
  have c373 : v334 ∨ v293 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u8 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v306 := c352
    have u10 : v281 := c354
    have u11 : ¬v288 := c359
    have u12 : ¬v278 := c360
    have u13 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u15
    have u17 : v327 := by
      rcases c250 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a u16
    have u18 : ¬v328 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u7
    have u19 : ¬v247 := c362
    have u20 : v314 := by
      rcases c269 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n1
    have u21 : ¬v265 := by
      rcases c372 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u22 : v344 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n1
    have u23 : ¬v343 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd u22 a
      · exact absurd a u18
    have u24 : v342 := by
      rcases c173 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u22 a
      · exact absurd a u23
    have u25 : v292 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
      · exact absurd u22 a
      · exact absurd a u4
    have u26 : ¬v291 := by
      rcases c76 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u16
    have u27 : v263 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u24 a
    have u28 : v246 := by
      rcases c364 with a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u23
    have u29 : ¬v352 := by
      rcases c370 with a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    have u30 : ¬v297 := by
      rcases c35 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd u28 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u11
    have u31 : ¬v296 := by
      rcases c152 with a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u9 a
      · exact absurd a u30
    rcases c31 with a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd u28 a
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u26
  have c374 : ¬v293 := by
    by_contra hc
    have u1 : ¬v251 := c351
    have u2 : v280 := by
      rcases c298 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v329 := by
      rcases c278 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
    have u6 : v281 := c354
    have u7 : v314 := by
      rcases c142 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd hc a
    rcases c268 with a|a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd hc a
  have c375 : v343 ∨ ¬v344 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u8 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v306 := c352
    have u10 : v281 := c354
    have u11 : ¬v288 := c359
    have u12 : ¬v278 := c360
    have u13 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u15
    have u17 : ¬v247 := c362
    have u18 : ¬v293 := c374
    have u19 : v334 := by
      rcases c373 with a|a
      · exact a
      · exact absurd a u18
    have u20 : v342 := by
      rcases c173 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
    have u21 : v292 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd a u4
    have u22 : ¬v333 := by
      rcases c92 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u18
    have u23 : ¬v291 := by
      rcases c76 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u16
    have u24 : v354 := by
      rcases c159 with a|a|a|a
      · exact absurd u19 a
      · exact absurd a u22
      · exact a
      · exact absurd n1 a
    have u25 : v263 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd u20 a
    have u26 : ¬v298 := by
      rcases c93 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact absurd u24 a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
    have u27 : ¬v246 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u18
    rcases c364 with a|a|a|a|a
    · exact absurd a u27
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a n0
  have c376 : ¬v344 := by
    by_contra hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u7 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u4
    have u8 : v306 := c352
    have u9 : v281 := c354
    have u10 : ¬v278 := c360
    have u11 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
    have u12 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
    have u14 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v327 := by
      rcases c250 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact absurd a u14
    have u16 : ¬v328 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u6
    have u17 : ¬v293 := c374
    have u18 : v314 := by
      rcases c269 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u17
    have u19 : ¬v343 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd hc a
      · exact absurd a u16
    rcases c375 with a|a
    · exact absurd a u19
    · exact absurd hc a
  have c377 : ¬v363 := by
    by_contra hc
    have u1 : v364 := c346
    have u2 : ¬v251 := c351
    have u3 : v280 := by
      rcases c298 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c286 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v329 := by
      rcases c278 with a|a
      · exact absurd a u4
      · exact a
    have u6 : v252 := by
      rcases c291 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v287 := by
      rcases c314 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u5 a
    have u8 : v286 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
    have u9 : v306 := c352
    have u10 : v281 := c354
    have u11 : ¬v288 := c359
    have u12 : ¬v278 := c360
    have u13 : v250 := by
      rcases c294 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v249 := by
      rcases c312 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v303 := by
      rcases c313 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : v248 := by
      rcases c355 with a|a
      · exact a
      · exact absurd a u14
    have u17 : ¬v285 := by
      rcases c320 with a|a
      · exact a
      · exact absurd a u15
    have u18 : v327 := by
      rcases c250 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a u17
    have u19 : ¬v247 := c362
    have u20 : ¬v294 := c363
    have u21 : v266 := by
      rcases c178 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u20
    have u22 : ¬v293 := c374
    have u23 : v334 := by
      rcases c373 with a|a
      · exact a
      · exact absurd a u22
    have u24 : v314 := by
      rcases c269 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u22
    have u25 : v309 := by
      rcases c74 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd u24 a
    have u26 : ¬v282 := by
      rcases c237 with a|a|a|a
      · exact absurd u25 a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
    have u27 : ¬v344 := c376
    have u28 : v265 := by
      rcases c51 with a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u22
    have u29 : v246 := by
      rcases c232 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u22
    have u30 : v289 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
    have u31 : ¬v260 := by
      rcases c125 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u29 a
      · exact absurd a u11
    have u32 : v298 := by
      rcases c38 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u22
    have u33 : v245 := by
      rcases c11 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u22
    have u34 : v292 := by
      rcases c48 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u22
      · exact absurd a u4
    have u35 : v270 := by
      rcases c139 with a|a|a|a
      · exact absurd u23 a
      · exact absurd a u31
      · exact a
      · exact absurd u28 a
    have u36 : ¬v348 := by
      rcases c56 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u21 a
      · exact absurd u35 a
      · exact absurd a u19
      · exact absurd a u20
    have u37 : ¬v302 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u6 a
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd a u20
    have u38 : v283 := by
      rcases c15 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd u33 a
      · exact absurd a u20
    have u39 : v296 := by
      rcases c17 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u26
      · exact absurd u13 a
      · exact absurd a u19
      · exact absurd a u17
      · exact a
    have u40 : v284 := by
      rcases c22 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u15
    have u41 : ¬v297 := by
      rcases c19 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd a u26
      · exact absurd a u2
      · exact a
    have u42 : ¬v291 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u10 a
      · exact absurd u13 a
      · exact absurd u29 a
      · exact absurd a u17
    have u43 : v301 := by
      rcases c43 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u16 a
      · exact absurd u29 a
      · exact absurd a u2
      · exact absurd u34 a
    have u44 : ¬v295 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd u40 a
    have u45 : v299 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u38 a
      · exact a
      · exact absurd u16 a
      · exact absurd u33 a
      · exact absurd a u14
      · exact absurd u40 a
    have u46 : v324 := by
      rcases c244 with a|a|a|a
      · exact absurd u40 a
      · exact absurd a u15
      · exact absurd a u17
      · exact a
    have u47 : v352 := by
      rcases c152 with a|a|a|a
      · exact absurd u39 a
      · exact a
      · exact absurd u9 a
      · exact absurd a u41
    have u48 : ¬v354 := by
      rcases c154 with a|a|a|a
      · exact absurd a u41
      · exact a
      · exact absurd u32 a
      · exact absurd a u4
    have u49 : ¬v300 := by
      rcases c42 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u13 a
      · exact absurd u16 a
      · exact absurd u29 a
      · exact absurd a u42
    have u50 : ¬v349 := by
      rcases c151 with a|a|a|a
      · exact absurd a u44
      · exact absurd u39 a
      · exact a
      · exact absurd a u15
    have u51 : v361 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u46 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd u18 a
    have u52 : ¬v346 := by
      rcases c150 with a|a|a|a
      · exact absurd a u49
      · exact absurd a u20
      · exact a
      · exact absurd u39 a
    have u53 : v304 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u1 a
      · exact absurd u9 a
      · exact absurd hc a
      · exact absurd a u4
    have u54 : v350 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd hc a
      · exact absurd u47 a
      · exact absurd u51 a
      · exact absurd a u48
    have u55 : ¬v347 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u43 a
      · exact absurd a u37
      · exact absurd a u36
      · exact absurd u54 a
      · exact absurd a u48
      · exact absurd hc a
    have u56 : ¬v345 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u55
      · exact absurd a u52
      · exact absurd u54 a
      · exact absurd a u50
    have u57 : ¬v356 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd u53 a
      · exact absurd u43 a
      · exact absurd a u55
      · exact a
      · exact absurd a u41
      · exact absurd u54 a
    have u58 : ¬v358 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd u47 a
      · exact a
      · exact absurd u51 a
      · exact absurd u54 a
      · exact absurd a u55
    have u59 : v355 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a u56
      · exact absurd u51 a
      · exact a
      · exact absurd a u50
      · exact absurd u54 a
      · exact absurd a u57
    rcases c165 with a|a|a|a
    · exact absurd u59 a
    · exact absurd u51 a
    · exact absurd a u58
    · exact absurd a u57
  have u1 : v364 := c346
  have u2 : ¬v251 := c351
  have u3 : v280 := by
    rcases c298 with a|a
    · exact absurd a u2
    · exact a
  have u4 : ¬v308 := by
    rcases c286 with a|a
    · exact absurd u3 a
    · exact a
  have u5 : v329 := by
    rcases c278 with a|a
    · exact absurd a u4
    · exact a
  have u6 : v252 := by
    rcases c291 with a|a
    · exact a
    · exact absurd a u4
  have u7 : ¬v287 := by
    rcases c314 with a|a|a
    · exact a
    · exact absurd a u4
    · exact absurd u5 a
  have u8 : v286 := by
    rcases c253 with a|a|a|a
    · exact a
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a u4
  have u9 : v306 := c352
  have u10 : v281 := c354
  have u11 : ¬v288 := c359
  have u12 : ¬v278 := c360
  have u13 : v250 := by
    rcases c294 with a|a|a
    · exact a
    · exact absurd a u2
    · exact absurd a u12
  have u14 : ¬v249 := by
    rcases c312 with a|a
    · exact a
    · exact absurd u13 a
  have u15 : ¬v303 := by
    rcases c313 with a|a|a
    · exact a
    · exact absurd a u14
    · exact absurd u13 a
  have u16 : v275 := by
    rcases c200 with a|a|a|a
    · exact a
    · exact absurd a u14
    · exact absurd u13 a
    · exact absurd a u15
  have u17 : ¬v285 := by
    rcases c320 with a|a
    · exact a
    · exact absurd a u15
  have u18 : v327 := by
    rcases c250 with a|a|a|a
    · exact a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd a u17
  have u19 : v257 := by
    rcases c26 with a|a|a|a|a|a
    · exact a
    · exact absurd u18 a
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd u9 a
    · exact absurd a u17
  have u20 : ¬v328 := by
    rcases c86 with a|a|a|a|a|a
    · exact a
    · exact absurd u18 a
    · exact absurd u5 a
    · exact absurd u8 a
    · exact absurd a u17
    · exact absurd a u7
  have u21 : ¬v258 := by
    rcases c66 with a|a|a|a|a|a
    · exact a
    · exact absurd u18 a
    · exact absurd u1 a
    · exact absurd u3 a
    · exact absurd u5 a
    · exact absurd a u12
  have u22 : ¬v247 := c362
  have u23 : ¬v293 := c374
  have u24 : v334 := by
    rcases c373 with a|a
    · exact a
    · exact absurd a u23
  have u25 : v314 := by
    rcases c269 with a|a|a|a
    · exact a
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u23
  have u26 : v309 := by
    rcases c74 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u10 a
    · exact absurd a u11
    · exact a
    · exact absurd a u23
    · exact absurd u25 a
  have u27 : ¬v282 := by
    rcases c237 with a|a|a|a
    · exact absurd u26 a
    · exact absurd u10 a
    · exact absurd a u11
    · exact a
  have u28 : ¬v344 := c376
  have u29 : v265 := by
    rcases c51 with a|a|a|a|a|a
    · exact absurd a u28
    · exact a
    · exact absurd u3 a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u23
  have u30 : v246 := by
    rcases c232 with a|a|a|a
    · exact absurd u29 a
    · exact a
    · exact absurd u6 a
    · exact absurd a u23
  have u31 : ¬v264 := by
    rcases c47 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact a
    · exact absurd u3 a
    · exact absurd u6 a
    · exact absurd u30 a
    · exact absurd a u2
  have u32 : ¬v260 := by
    rcases c125 with a|a|a|a
    · exact a
    · exact absurd a u22
    · exact absurd u30 a
    · exact absurd a u11
  have u33 : ¬v253 := by
    rcases c13 with a|a|a|a|a|a
    · exact a
    · exact absurd u29 a
    · exact absurd u10 a
    · exact absurd u25 a
    · exact absurd u30 a
    · exact absurd a u23
  have u34 : v245 := by
    rcases c11 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact a
    · exact absurd u6 a
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u23
  have u35 : v292 := by
    rcases c48 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact a
    · exact absurd a u2
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u4
  have u36 : v342 := by
    rcases c70 with a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd u1 a
    · exact a
    · exact absurd u3 a
    · exact absurd a u12
    · exact absurd a u28
  have u37 : ¬v313 := by
    rcases c65 with a|a|a|a|a|a
    · exact absurd a u31
    · exact a
    · exact absurd u3 a
    · exact absurd u5 a
    · exact absurd a u21
    · exact absurd a u28
  have u38 : v263 := by
    rcases c63 with a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u21
    · exact a
    · exact absurd u19 a
    · exact absurd a u31
    · exact absurd a u12
  have u39 : ¬v333 := by
    rcases c61 with a|a|a|a|a|a
    · exact absurd a u33
    · exact a
    · exact absurd u26 a
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u37
  have u40 : v296 := by
    rcases c17 with a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u27
    · exact absurd u13 a
    · exact absurd a u22
    · exact absurd a u17
    · exact a
  have u41 : v284 := by
    rcases c22 with a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u14
    · exact a
    · exact absurd u13 a
    · exact absurd a u17
    · exact absurd a u15
  have u42 : ¬v256 := by
    rcases c21 with a|a|a|a|a|a
    · exact absurd u34 a
    · exact a
    · exact absurd u16 a
    · exact absurd u13 a
    · exact absurd u19 a
    · exact absurd a u14
  have u43 : ¬v291 := by
    rcases c7 with a|a|a|a|a|a
    · exact a
    · exact absurd u34 a
    · exact absurd u10 a
    · exact absurd u13 a
    · exact absurd u30 a
    · exact absurd a u17
  have u44 : v332 := by
    rcases c90 with a|a|a|a|a|a
    · exact absurd a u39
    · exact a
    · exact absurd a u11
    · exact absurd u36 a
    · exact absurd u35 a
    · exact absurd a u43
  have u45 : ¬v262 := by
    rcases c44 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact a
    · exact absurd u16 a
    · exact absurd u13 a
    · exact absurd u38 a
    · exact absurd a u14
  have u46 : ¬v295 := by
    rcases c16 with a|a|a|a|a|a
    · exact a
    · exact absurd u34 a
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd u41 a
  have u47 : v324 := by
    rcases c244 with a|a|a|a
    · exact absurd u41 a
    · exact absurd a u15
    · exact absurd a u17
    · exact a
  have u48 : ¬v349 := by
    rcases c151 with a|a|a|a
    · exact absurd a u46
    · exact absurd u40 a
    · exact a
    · exact absurd a u15
  have u49 : v326 := by
    rcases c83 with a|a|a|a|a|a
    · exact a
    · exact absurd u47 a
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd u41 a
    · exact absurd a u20
  have u50 : v361 := by
    rcases c81 with a|a|a|a|a|a
    · exact a
    · exact absurd u9 a
    · exact absurd u47 a
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd u18 a
  have u51 : ¬v331 := by
    rcases c89 with a|a|a|a|a|a
    · exact a
    · exact absurd a u46
    · exact absurd u44 a
    · exact absurd a u11
    · exact absurd u40 a
    · exact absurd a u48
  have u52 : ¬v339 := by
    rcases c156 with a|a|a|a
    · exact absurd a u51
    · exact absurd u44 a
    · exact a
    · exact absurd a u48
  have u53 : ¬v311 := by
    rcases c62 with a|a|a|a|a|a
    · exact a
    · exact absurd a u52
    · exact absurd u16 a
    · exact absurd a u42
    · exact absurd a u45
    · exact absurd u47 a
  have u54 : ¬v363 := c377
  have u55 : v362 := by
    rcases c169 with a|a|a|a
    · exact a
    · exact absurd u1 a
    · exact absurd a u54
    · exact absurd u50 a
  have u56 : ¬v341 := by
    rcases c108 with a|a|a|a|a|a
    · exact a
    · exact absurd u49 a
    · exact absurd u55 a
    · exact absurd u47 a
    · exact absurd a u53
    · exact absurd a u52
  have u57 : v343 := by
    rcases c115 with a|a|a|a|a|a
    · exact absurd a u52
    · exact absurd u1 a
    · exact absurd u55 a
    · exact a
    · exact absurd u36 a
    · exact absurd u50 a
  rcases c171 with a|a|a|a
  · exact absurd a u52
  · exact absurd u55 a
  · exact absurd a u56
  · exact absurd u57 a
