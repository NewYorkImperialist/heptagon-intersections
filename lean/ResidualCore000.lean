import Mathlib.Tactic

/-- The 167-clause unsatisfiable core of orbit_000, contradictory.
103 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem core000_false
    (v200 v203 v204 v205 v206 v207 v230 v235 v239 v242 v245 v246 v247 v248 v249 v250 v251 v252 v260 v265 v266 v267 v269 v271 v275 v276 v278 v279 v280 v282 v283 v284 v285 v286 v287 v288 v293 v294 v299 v300 v303 v304 v306 v307 v308 v315 v320 v324 v327 v329 v345 v361 v364 : Prop)
    (c1 : v203 ∨ v204 ∨ ¬v200 ∨ ¬v247 ∨ v248 ∨ v266)
    (c2 : ¬v203 ∨ v267 ∨ v205 ∨ v247 ∨ v249 ∨ v200)
    (c3 : ¬v204 ∨ v271 ∨ ¬v249 ∨ ¬v200 ∨ ¬v205 ∨ v248)
    (c4 : v204 ∨ ¬v271 ∨ ¬v248 ∨ v200 ∨ v205 ∨ v249)
    (c5 : ¬v200 ∨ v249 ∨ ¬v206 ∨ v205 ∨ v250 ∨ v275)
    (c6 : v200 ∨ ¬v249 ∨ ¬v250 ∨ ¬v205 ∨ ¬v275 ∨ v206)
    (c7 : ¬v230 ∨ v204 ∨ v235 ∨ v266 ∨ v271 ∨ v345)
    (c8 : v203 ∨ ¬v267 ∨ ¬v205 ∨ ¬v207 ∨ v269 ∨ v276)
    (c9 : v249 ∨ ¬v283 ∨ v248 ∨ v284 ∨ ¬v245 ∨ v299)
    (c10 : v245 ∨ ¬v249 ∨ ¬v299 ∨ ¬v284 ∨ ¬v248 ∨ v283)
    (c11 : ¬v300 ∨ ¬v245 ∨ ¬v250 ∨ ¬v283 ∨ ¬v285 ∨ v248)
    (c12 : ¬v245 ∨ ¬v249 ∨ ¬v284 ∨ ¬v285 ∨ v250 ∨ v303)
    (c13 : ¬v304 ∨ v286 ∨ ¬v284 ∨ ¬v251 ∨ ¬v249 ∨ ¬v245)
    (c14 : v245 ∨ ¬v285 ∨ ¬v250 ∨ ¬v306 ∨ ¬v286 ∨ v251)
    (c15 : v245 ∨ ¬v250 ∨ v287 ∨ ¬v285 ∨ ¬v252 ∨ v307)
    (c16 : ¬v267 ∨ ¬v271 ∨ ¬v266 ∨ ¬v248 ∨ v247 ∨ v249)
    (c17 : v267 ∨ v271 ∨ ¬v249 ∨ ¬v247 ∨ v248 ∨ v266)
    (c18 : ¬v345 ∨ v271 ∨ ¬v294 ∨ v248 ∨ v266 ∨ v299)
    (c19 : ¬v269 ∨ ¬v267 ∨ ¬v249 ∨ ¬v247 ∨ v251 ∨ v276)
    (c20 : ¬v276 ∨ ¬v249 ∨ ¬v250 ∨ v278 ∨ v251 ∨ ¬v275)
    (c21 : v304 ∨ ¬v249 ∨ v250 ∨ v303 ∨ ¬v251 ∨ v306)
    (c22 : v361 ∨ ¬v303 ∨ v278 ∨ ¬v250 ∨ ¬v275 ∨ ¬v306)
    (c23 : ¬v279 ∨ ¬v278 ∨ ¬v252 ∨ ¬v250 ∨ ¬v280 ∨ v251)
    (c24 : v307 ∨ v306 ∨ ¬v250 ∨ ¬v252 ∨ v251 ∨ v308)
    (c25 : ¬v306 ∨ ¬v307 ∨ v250 ∨ ¬v252 ∨ v251 ∨ v308)
    (c26 : ¬v306 ∨ ¬v280 ∨ v278 ∨ v251 ∨ ¬v308 ∨ v364)
    (c27 : ¬v306 ∨ ¬v251 ∨ ¬v278 ∨ v364 ∨ v280 ∨ ¬v308)
    (c28 : v300 ∨ v299 ∨ v284 ∨ v303 ∨ ¬v283 ∨ ¬v285)
    (c29 : ¬v307 ∨ ¬v286 ∨ ¬v306 ∨ ¬v285 ∨ v287 ∨ v308)
    (c30 : ¬v286 ∨ v364 ∨ v329 ∨ ¬v308 ∨ v306 ∨ v327)
    (c31 : ¬v327 ∨ ¬v286 ∨ v364 ∨ ¬v329 ∨ v308 ∨ ¬v306)
    (c32 : ¬v230 ∨ ¬v203 ∨ v204 ∨ v266)
    (c33 : v230 ∨ v203 ∨ ¬v266 ∨ ¬v204)
    (c34 : v275 ∨ v206 ∨ ¬v205 ∨ ¬v239)
    (c35 : v205 ∨ ¬v206 ∨ ¬v275 ∨ v239)
    (c36 : ¬v206 ∨ ¬v242 ∨ v278 ∨ v207)
    (c37 : v206 ∨ ¬v207 ∨ ¬v278 ∨ v242)
    (c38 : v293 ∨ ¬v246 ∨ v252 ∨ ¬v265)
    (c39 : v294 ∨ v248 ∨ ¬v247 ∨ ¬v266)
    (c40 : ¬v294 ∨ v247 ∨ ¬v248 ∨ v266)
    (c41 : ¬v306 ∨ ¬v251 ∨ v250 ∨ v278)
    (c42 : ¬v251 ∨ v308 ∨ ¬v280 ∨ v252)
    (c43 : ¬v252 ∨ v280 ∨ v251 ∨ ¬v308)
    (c44 : v279 ∨ ¬v278 ∨ ¬v280 ∨ v364)
    (c45 : v315 ∨ ¬v294 ∨ v283 ∨ ¬v282)
    (c46 : ¬v315 ∨ v282 ∨ ¬v283 ∨ v294)
    (c47 : v320 ∨ v284 ∨ ¬v283 ∨ ¬v299)
    (c48 : ¬v284 ∨ v299 ∨ ¬v320 ∨ v283)
    (c49 : ¬v303 ∨ ¬v284 ∨ v285 ∨ v324)
    (c50 : ¬v327 ∨ ¬v286 ∨ v285 ∨ v306)
    (c51 : v287 ∨ ¬v308 ∨ v329 ∨ ¬v286)
    (c52 : ¬v287 ∨ v286 ∨ ¬v329 ∨ v308)
    (c53 : ¬v307 ∨ ¬v364 ∨ v306 ∨ v308)
    (c54 : ¬v230 ∨ ¬v204 ∨ ¬v266 ∨ v203)
    (c55 : v230 ∨ v204 ∨ ¬v203 ∨ v266)
    (c56 : ¬v235 ∨ v204 ∨ ¬v205 ∨ v271)
    (c57 : v239 ∨ v205 ∨ v206 ∨ v275)
    (c58 : v205 ∨ v239 ∨ ¬v275 ∨ v206)
    (c59 : ¬v239 ∨ v205 ∨ v206 ∨ v275)
    (c60 : ¬v239 ∨ ¬v275 ∨ v205 ∨ v206)
    (c61 : ¬v239 ∨ ¬v206 ∨ v205 ∨ ¬v275)
    (c62 : v275 ∨ v206 ∨ ¬v205 ∨ v239)
    (c63 : ¬v205 ∨ ¬v275 ∨ ¬v239 ∨ v206)
    (c64 : v239 ∨ v275 ∨ ¬v206 ∨ ¬v205)
    (c65 : v239 ∨ ¬v275 ∨ ¬v206 ∨ ¬v205)
    (c66 : ¬v239 ∨ ¬v206 ∨ ¬v205 ∨ v275)
    (c67 : ¬v239 ∨ ¬v206 ∨ ¬v275 ∨ ¬v205)
    (c68 : v207 ∨ v206 ∨ v278 ∨ v242)
    (c69 : v206 ∨ v207 ∨ ¬v278 ∨ v242)
    (c70 : v206 ∨ ¬v242 ∨ v278 ∨ v207)
    (c71 : v206 ∨ ¬v242 ∨ ¬v278 ∨ v207)
    (c72 : v206 ∨ ¬v207 ∨ ¬v242 ∨ ¬v278)
    (c73 : v242 ∨ ¬v206 ∨ v278 ∨ v207)
    (c74 : ¬v242 ∨ ¬v206 ∨ ¬v278 ∨ v207)
    (c75 : ¬v206 ∨ v242 ∨ ¬v207 ∨ v278)
    (c76 : ¬v206 ∨ ¬v242 ∨ v278 ∨ ¬v207)
    (c77 : ¬v206 ∨ ¬v242 ∨ ¬v207 ∨ ¬v278)
    (c78 : v260 ∨ v247 ∨ v246 ∨ v288)
    (c79 : v247 ∨ ¬v288 ∨ v246 ∨ v260)
    (c80 : ¬v260 ∨ v247 ∨ v246 ∨ v288)
    (c81 : ¬v260 ∨ ¬v288 ∨ v246 ∨ v247)
    (c82 : v288 ∨ v260 ∨ ¬v247 ∨ ¬v246)
    (c83 : ¬v288 ∨ ¬v247 ∨ ¬v246 ∨ v260)
    (c84 : v288 ∨ ¬v260 ∨ ¬v247 ∨ ¬v246)
    (c85 : ¬v288 ∨ ¬v260 ∨ ¬v247 ∨ ¬v246)
    (c86 : v294 ∨ v247 ∨ v248 ∨ v266)
    (c87 : ¬v294 ∨ v247 ∨ v248 ∨ v266)
    (c88 : v294 ∨ ¬v266 ∨ v247 ∨ v248)
    (c89 : ¬v294 ∨ v247 ∨ ¬v266 ∨ v248)
    (c90 : v294 ∨ v247 ∨ ¬v248 ∨ v266)
    (c91 : ¬v266 ∨ ¬v294 ∨ ¬v248 ∨ v247)
    (c92 : v248 ∨ v266 ∨ ¬v247 ∨ v294)
    (c93 : ¬v266 ∨ ¬v294 ∨ ¬v247 ∨ v248)
    (c94 : v294 ∨ ¬v248 ∨ v266 ∨ ¬v247)
    (c95 : ¬v294 ∨ ¬v248 ∨ ¬v247 ∨ v266)
    (c96 : ¬v248 ∨ ¬v266 ∨ ¬v247 ∨ v294)
    (c97 : ¬v294 ∨ ¬v266 ∨ ¬v248 ∨ ¬v247)
    (c98 : ¬v271 ∨ v299 ∨ ¬v249 ∨ v248)
    (c99 : v271 ∨ v249 ∨ ¬v299 ∨ ¬v248)
    (c100 : ¬v303 ∨ v275 ∨ v250 ∨ ¬v249)
    (c101 : v250 ∨ v278 ∨ v251 ∨ v306)
    (c102 : ¬v306 ∨ v251 ∨ v278 ∨ v250)
    (c103 : v306 ∨ v250 ∨ ¬v278 ∨ v251)
    (c104 : ¬v306 ∨ v250 ∨ ¬v278 ∨ v251)
    (c105 : v306 ∨ ¬v251 ∨ v278 ∨ v250)
    (c106 : ¬v306 ∨ ¬v251 ∨ ¬v278 ∨ v250)
    (c107 : v306 ∨ v251 ∨ ¬v250 ∨ v278)
    (c108 : ¬v306 ∨ ¬v278 ∨ v251 ∨ ¬v250)
    (c109 : v306 ∨ v278 ∨ ¬v250 ∨ ¬v251)
    (c110 : ¬v306 ∨ ¬v251 ∨ ¬v250 ∨ v278)
    (c111 : v306 ∨ ¬v251 ∨ ¬v278 ∨ ¬v250)
    (c112 : ¬v306 ∨ ¬v251 ∨ ¬v250 ∨ ¬v278)
    (c113 : v251 ∨ v280 ∨ v308 ∨ v252)
    (c114 : v252 ∨ ¬v308 ∨ v251 ∨ v280)
    (c115 : v251 ∨ v252 ∨ ¬v280 ∨ v308)
    (c116 : ¬v280 ∨ ¬v308 ∨ v251 ∨ v252)
    (c117 : v251 ∨ v308 ∨ ¬v252 ∨ v280)
    (c118 : v251 ∨ ¬v308 ∨ ¬v280 ∨ ¬v252)
    (c119 : ¬v251 ∨ v252 ∨ v280 ∨ v308)
    (c120 : ¬v251 ∨ ¬v308 ∨ ¬v280 ∨ v252)
    (c121 : ¬v251 ∨ v280 ∨ ¬v252 ∨ v308)
    (c122 : ¬v251 ∨ v280 ∨ ¬v308 ∨ ¬v252)
    (c123 : ¬v251 ∨ v308 ∨ ¬v252 ∨ ¬v280)
    (c124 : ¬v251 ∨ ¬v252 ∨ ¬v308 ∨ ¬v280)
    (c125 : ¬v293 ∨ ¬v265 ∨ v246 ∨ v252)
    (c126 : v293 ∨ ¬v265 ∨ v252 ∨ v246)
    (c127 : ¬v293 ∨ v265 ∨ v252 ∨ v246)
    (c128 : v293 ∨ v265 ∨ v246 ∨ v252)
    (c129 : ¬v293 ∨ ¬v265 ∨ ¬v246 ∨ v252)
    (c130 : ¬v293 ∨ ¬v252 ∨ ¬v265 ∨ ¬v246)
    (c131 : v293 ∨ ¬v252 ∨ ¬v265 ∨ ¬v246)
    (c132 : ¬v293 ∨ v265 ∨ ¬v252 ∨ ¬v246)
    (c133 : ¬v246 ∨ v265 ∨ ¬v252 ∨ v293)
    (c134 : v282 ∨ ¬v294 ∨ v315 ∨ v283)
    (c135 : ¬v315 ∨ v282 ∨ ¬v294 ∨ v283)
    (c136 : v282 ∨ ¬v283 ∨ v294 ∨ v315)
    (c137 : ¬v315 ∨ ¬v294 ∨ ¬v282 ∨ v283)
    (c138 : ¬v282 ∨ ¬v283 ∨ v294 ∨ v315)
    (c139 : ¬v315 ∨ ¬v282 ∨ ¬v283 ∨ v294)
    (c140 : v320 ∨ v299 ∨ v283 ∨ v284)
    (c141 : v284 ∨ v299 ∨ ¬v320 ∨ v283)
    (c142 : v284 ∨ v320 ∨ ¬v299 ∨ v283)
    (c143 : v284 ∨ v283 ∨ ¬v299 ∨ ¬v320)
    (c144 : v320 ∨ v299 ∨ v283 ∨ ¬v284)
    (c145 : ¬v284 ∨ ¬v299 ∨ ¬v320 ∨ v283)
    (c146 : ¬v299 ∨ ¬v283 ∨ ¬v320 ∨ v284)
    (c147 : v320 ∨ v299 ∨ ¬v284 ∨ ¬v283)
    (c148 : ¬v320 ∨ v299 ∨ ¬v283 ∨ ¬v284)
    (c149 : v320 ∨ ¬v284 ∨ ¬v299 ∨ ¬v283)
    (c150 : ¬v284 ∨ ¬v283 ∨ ¬v299 ∨ ¬v320)
    (c151 : v324 ∨ v284 ∨ v285 ∨ v303)
    (c152 : ¬v324 ∨ v284 ∨ v285 ∨ v303)
    (c153 : v324 ∨ ¬v303 ∨ v285 ∨ v284)
    (c154 : ¬v324 ∨ ¬v303 ∨ v284 ∨ v285)
    (c155 : ¬v324 ∨ ¬v284 ∨ v285 ∨ ¬v303)
    (c156 : v324 ∨ ¬v303 ∨ ¬v284 ∨ ¬v285)
    (c157 : ¬v324 ∨ ¬v285 ∨ ¬v303 ∨ ¬v284)
    (c158 : ¬v286 ∨ ¬v306 ∨ v285 ∨ v327)
    (c159 : v286 ∨ v287 ∨ v308 ∨ v329)
    (c160 : v286 ∨ ¬v329 ∨ v287 ∨ v308)
    (c161 : v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c162 : ¬v286 ∨ v287 ∨ v308 ∨ v329)
    (c163 : v287 ∨ ¬v308 ∨ ¬v329 ∨ ¬v286)
    (c164 : ¬v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c165 : ¬v287 ∨ ¬v286 ∨ v308 ∨ ¬v329)
    (c166 : ¬v287 ∨ ¬v308 ∨ v329 ∨ ¬v286)
    (c167 : ¬v287 ∨ ¬v308 ∨ ¬v329 ∨ ¬v286)
    : False := by
  have c168 : v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v286 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c162 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c169 : ¬v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v286 := by
      rcases c164 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c161 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c170 : v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v287 := by
      rcases c168 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c169 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c171 : ¬v247 ∨ ¬v246 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v288 := by
      rcases c82 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c83 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c174 : ¬v250 ∨ ¬v251 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c109 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c110 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c177 : v303 ∨ v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c152 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c151 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c178 : ¬v303 ∨ v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c154 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c153 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
  have c179 : v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v303 := by
      rcases c177 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c178 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c181 : ¬v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c125 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c126 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
  have c183 : ¬v246 ∨ v252 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c129 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c38 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd n2 a
  have c184 : ¬v265 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v246 := by
      rcases c183 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c181 with a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
  have c186 : ¬v280 ∨ v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c120 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c116 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n1
  have c188 : ¬v280 ∨ ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c124 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c118 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c189 : v280 ∨ ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c122 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c43 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n2 a
  have c190 : ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c188 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c189 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c192 : ¬v252 ∨ v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c117 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n1
  have c193 : v252 ∨ v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c119 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c113 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c194 : v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c192 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c193 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c195 : v252 ∨ ¬v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c42 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
    rcases c115 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
  have c196 : ¬v278 ∨ ¬v250 ∨ v308 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v280 := by
      rcases c194 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v252 := by
      rcases c195 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
    have u3 : v279 := by
      rcases c44 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd a n3
    have u4 : ¬v251 := by
      rcases c123 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd u1 a
    rcases c23 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a u4
  have c199 : v278 ∨ v250 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c102 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    rcases c101 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
  have c202 : v250 ∨ v308 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v280 := by
      rcases c194 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v252 := by
      rcases c195 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u3 : ¬v251 := by
      rcases c123 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd u1 a
    have u4 : v278 := by
      rcases c199 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u5 : ¬v306 := by
      rcases c104 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u3
    rcases c103 with a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u3
  have c203 : ¬v260 ∨ ¬v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v288 := by
      rcases c84 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c85 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c204 : ¬v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v260 := by
      rcases c171 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c203 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c208 : v266 ∨ ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v294 := by
      rcases c94 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c95 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c210 : v280 ∨ v251 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v252 := by
      rcases c190 with a|a
      · exact a
      · exact absurd n2 a
    rcases c114 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c211 : v280 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v308 := by
      rcases c194 with a|a
      · exact absurd a n0
      · exact a
    rcases c210 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
  have c212 : ¬v308 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c190 with a|a
      · exact a
      · exact absurd n0 a
    rcases c186 with a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
  have c214 : ¬v280 ∨ ¬v251 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v252 := by
      rcases c123 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
    rcases c42 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
  have c215 : v308 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c214 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c194 with a|a
    · exact absurd a u1
    · exact absurd a n0
  have c219 : v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c87 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c86 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c222 : v278 ∨ v250 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c105 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c41 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c223 : v278 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v250 := by
      rcases c222 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c174 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c231 : v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c128 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c127 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
  have c232 : v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v265 := by
      rcases c184 with a|a
      · exact a
      · exact absurd a n1
    rcases c231 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c235 : ¬v266 ∨ ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c97 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c96 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c236 : ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v266 := by
      rcases c235 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c208 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c239 : ¬v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c89 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c88 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c240 : v248 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v266 := by
      rcases c219 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c239 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c242 : v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c132 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c133 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c243 : ¬v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c131 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c130 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c244 : ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v265 := by
      rcases c242 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c243 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c250 : v288 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c78 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c80 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c251 : ¬v288 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v260 := by
      rcases c81 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c79 with a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c252 : v247 ∨ v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v288 := by
      rcases c251 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c250 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c255 : ¬v280 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v308 := by
      rcases c195 with a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
    rcases c212 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c256 : v266 ∨ v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v294 := by
      rcases c90 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c40 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c262 : v283 ∨ ¬v299 ∨ ¬v320 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v284 := by
      rcases c143 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c145 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c263 : ¬v283 ∨ v294 ∨ v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v282 := by
      rcases c138 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c136 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c267 : v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c71 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c74 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c268 : ¬v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c72 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c77 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c269 : ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v207 := by
      rcases c267 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c268 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c271 : v206 ∨ v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v207 := by
      rcases c69 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c37 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c273 : ¬v205 ∨ ¬v206 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v239 := by
      rcases c64 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c66 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c278 : v205 ∨ v206 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v239 := by
      rcases c59 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c57 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c280 : ¬v206 ∨ ¬v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v242 := by
      rcases c75 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c76 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n1 a
  have c283 : v207 ∨ ¬v206 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v242 := by
      rcases c73 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    rcases c36 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n0
  have c284 : ¬v206 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v207 := by
      rcases c280 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    rcases c283 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c287 : v294 ∨ ¬v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v266 := by
      rcases c39 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
    rcases c92 with a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
  have c296 : v284 ∨ ¬v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v320 := by
      rcases c47 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c146 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c299 : ¬v284 ∨ ¬v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c150 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c149 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c300 : ¬v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := by
      rcases c299 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c296 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c301 : v283 ∨ ¬v282 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v315 := by
      rcases c45 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c137 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c306 : v282 ∨ v283 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v315 := by
      rcases c134 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c135 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c307 : v283 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v282 := by
      rcases c306 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c301 with a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd n1 a
  have c312 : ¬v239 ∨ v206 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v205 := by
      rcases c60 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c63 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c313 : ¬v275 ∨ ¬v249 ∨ v278 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v251 := by
      rcases c223 with a|a
      · exact absurd a n2
      · exact a
    have u2 : ¬v206 := by
      rcases c284 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v280 := by
      rcases c211 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v250 := by
      rcases c199 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
    have u5 : ¬v239 := by
      rcases c312 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
    have u6 : v205 := by
      rcases c58 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u2
    have u7 : v252 := by
      rcases c255 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v200 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd a u2
    have u9 : ¬v246 := by
      rcases c244 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v247 := by
      rcases c252 with a|a
      · exact a
      · exact absurd a u9
    have u11 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v294 := by
      rcases c287 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
    have u13 : ¬v266 := by
      rcases c93 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u10 a
      · exact absurd a u11
    have u14 : v283 := by
      rcases c307 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v299 := by
      rcases c300 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v271 := by
      rcases c98 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u11
    have u17 : ¬v204 := by
      rcases c3 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd u6 a
      · exact absurd a u11
    have u18 : v203 := by
      rcases c1 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u13
    have u19 : v230 := by
      rcases c55 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a u13
    rcases c32 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u13
  have c317 : ¬v284 ∨ ¬v283 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v320 := by
      rcases c147 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c148 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c319 : ¬v250 ∨ ¬v278 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v308 := by
      rcases c196 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    have u2 : ¬v280 := by
      rcases c212 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v252 := by
      rcases c190 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v251 := by
      rcases c114 with a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
    have u5 : ¬v306 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u1 a
    rcases c111 with a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c320 : ¬v283 ∨ v294 ∨ ¬v315 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v282 := by
      rcases c139 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c46 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c321 : ¬v283 ∨ v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v315 := by
      rcases c320 with a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
    rcases c263 with a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c322 : v284 ∨ v283 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c141 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    rcases c140 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c323 : ¬v284 ∨ v283 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c48 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    rcases c144 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n0 a
  have c324 : v299 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v284 := by
      rcases c322 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c323 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c325 : ¬v285 ∨ ¬v284 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c157 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c156 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c328 : ¬v205 ∨ ¬v206 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v239 := by
      rcases c65 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c67 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c329 : v205 ∨ ¬v206 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v239 := by
      rcases c61 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
    rcases c35 with a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u1
  have c330 : ¬v275 ∨ ¬v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v205 := by
      rcases c328 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c329 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c331 : ¬v303 ∨ ¬v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c155 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
    rcases c49 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c332 : ¬v303 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v285 := by
      rcases c325 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c331 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c336 : ¬v247 ∨ v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd n0 a
      · exact a
    rcases c287 with a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
  have c340 : v286 ∨ v308 ∨ ¬v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v287 := by
      rcases c52 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c160 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n1
  have c342 : ¬v248 ∨ v247 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v266 := by
      rcases c91 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c256 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c343 : ¬v294 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v248 := by
      rcases c342 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c240 with a|a
    · exact absurd a u1
    · exact absurd a n1
  have c345 : ¬v204 ∨ v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c54 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c33 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
  have c346 : v249 ∨ ¬v206 ∨ v247 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v275 := by
      rcases c330 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v294 := by
      rcases c343 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v248 := by
      rcases c240 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v205 := by
      rcases c273 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
    have u5 : ¬v283 := by
      rcases c321 with a|a
      · exact a
      · exact absurd a u2
    have u6 : v266 := by
      rcases c256 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
    have u7 : ¬v200 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u1
    have u8 : v299 := by
      rcases c324 with a|a
      · exact a
      · exact absurd a u5
    have u9 : v271 := by
      rcases c99 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd u3 a
    have u10 : v204 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
    have u11 : ¬v267 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n0
    have u12 : v203 := by
      rcases c345 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u6 a
    rcases c2 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u7
  have c347 : ¬v329 ∨ ¬v286 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v287 := by
      rcases c163 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c167 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c348 : v327 ∨ ¬v286 ∨ v306 ∨ ¬v308 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v329 := by
      rcases c347 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u2 : v287 := by
      rcases c51 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd n1 a
    rcases c166 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd n1 a
  have c349 : v250 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v308 := by
      rcases c202 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u2 : ¬v280 := by
      rcases c212 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v252 := by
      rcases c190 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v251 := by
      rcases c211 with a|a
      · exact absurd a u2
      · exact a
    have u5 : v246 := by
      rcases c232 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v278 := by
      rcases c223 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v247 := by
      rcases c204 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v242 := by
      rcases c269 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v306 := by
      rcases c106 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
      · exact absurd a n0
    have u10 : ¬v294 := by
      rcases c343 with a|a
      · exact a
      · exact absurd a u7
    have u11 : v248 := by
      rcases c240 with a|a
      · exact a
      · exact absurd a u7
    have u12 : v206 := by
      rcases c271 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
    have u13 : ¬v283 := by
      rcases c321 with a|a
      · exact a
      · exact absurd a u10
    have u14 : v249 := by
      rcases c346 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a n0
    have u15 : ¬v275 := by
      rcases c330 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v299 := by
      rcases c324 with a|a
      · exact a
      · exact absurd a u13
    have u17 : ¬v303 := by
      rcases c100 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u14 a
    have u18 : ¬v320 := by
      rcases c262 with a|a|a
      · exact absurd a u13
      · exact absurd u16 a
      · exact a
    have u19 : v284 := by
      rcases c142 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u13
    have u20 : v245 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact absurd u11 a
      · exact absurd a u13
    have u21 : v304 := by
      rcases c21 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a u9
    have u22 : ¬v285 := by
      rcases c12 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u14 a
      · exact absurd u19 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
    have u23 : v286 := by
      rcases c13 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u19 a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact absurd u20 a
    have u24 : ¬v327 := by
      rcases c50 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u9
    rcases c348 with a|a|a|a|a
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a u9
    · exact absurd u1 a
    · exact absurd a n1
  have c350 : ¬v205 ∨ v206 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v239 := by
      rcases c62 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
    rcases c34 with a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u1 a
  have c351 : v275 ∨ v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v205 := by
      rcases c278 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c350 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c352 : ¬v250 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := by
      rcases c319 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    have u2 : ¬v251 := by
      rcases c223 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v206 := by
      rcases c284 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v280 := by
      rcases c211 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v306 := by
      rcases c107 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
    have u6 : v275 := by
      rcases c351 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v308 := by
      rcases c212 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v252 := by
      rcases c255 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v329 := by
      rcases c170 with a|a
      · exact absurd a u7
      · exact a
    have u10 : ¬v246 := by
      rcases c244 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v286 := by
      rcases c340 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u9 a
    have u12 : ¬v327 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd u5 a
    have u13 : v247 := by
      rcases c252 with a|a
      · exact a
      · exact absurd a u10
    have u14 : v285 := by
      rcases c158 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u12
    have u15 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v294 := by
      rcases c336 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v245 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd a u2
    have u18 : v283 := by
      rcases c307 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v300 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd u14 a
      · exact absurd a u15
    have u20 : ¬v299 := by
      rcases c300 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v284 := by
      rcases c317 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u20
    have u22 : v303 := by
      rcases c28 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u23 : v249 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd u17 a
      · exact absurd a u20
    have u24 : v361 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd u5 a
    rcases c313 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u23 a
    · exact absurd a u1
    · exact absurd u24 a
  have c353 : v364 := by
    by_contra hc
    have u1 : v250 := by
      rcases c349 with a|a
      · exact a
      · exact absurd a hc
    rcases c352 with a|a
    · exact absurd u1 a
    · exact absurd a hc
  have c354 : v204 ∨ ¬v203 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v230 := by
      rcases c55 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c32 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c355 : ¬v249 ∨ ¬v250 ∨ ¬v275 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v283 := by
      rcases c324 with a|a
      · exact absurd a n3
      · exact a
    have u2 : v294 := by
      rcases c321 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v247 := by
      rcases c343 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v206 := by
      rcases c330 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v239 := by
      rcases c312 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n2 a
    have u7 : v205 := by
      rcases c58 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u5
    have u8 : ¬v271 := by
      rcases c98 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u4
    have u9 : ¬v266 := by
      rcases c93 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a u4
    have u10 : v200 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact absurd a u5
    have u11 : ¬v204 := by
      rcases c3 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact absurd a u4
    have u12 : v203 := by
      rcases c1 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u9
    rcases c354 with a|a|a
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a u9
  have c356 : ¬v307 ∨ ¬v285 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v364 := c353
    have u2 : v329 := by
      rcases c170 with a|a
      · exact absurd a n2
      · exact a
    have u3 : v280 := by
      rcases c194 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v251 := by
      rcases c215 with a|a
      · exact absurd a n2
      · exact a
    have u5 : v286 := by
      rcases c340 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
    have u6 : v252 := by
      rcases c255 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v246 := by
      rcases c244 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v247 := by
      rcases c252 with a|a
      · exact a
      · exact absurd a u7
    have u9 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v294 := by
      rcases c336 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v283 := by
      rcases c307 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v299 := by
      rcases c300 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v284 := by
      rcases c317 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
    have u14 : v306 := by
      rcases c53 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
    have u15 : v250 := by
      rcases c25 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n2
    have u16 : v245 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact absurd u5 a
      · exact absurd a u4
    have u17 : ¬v278 := by
      rcases c108 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u4
      · exact absurd u15 a
    have u18 : v249 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd u16 a
      · exact absurd a u12
    have u19 : ¬v206 := by
      rcases c284 with a|a
      · exact a
      · exact absurd a u17
    have u20 : ¬v275 := by
      rcases c355 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u15 a
      · exact a
      · exact absurd a u12
    rcases c351 with a|a
    · exact absurd a u20
    · exact absurd a u19
  have c357 : ¬v250 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v283 := by
      rcases c324 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v294 := by
      rcases c321 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v284 := by
      rcases c317 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u4 : v247 := by
      rcases c343 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v285 := by
      rcases c179 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v248 := by
      rcases c236 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v246 := by
      rcases c204 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v252 := by
      rcases c232 with a|a
      · exact absurd a u7
      · exact a
    have u9 : ¬v308 := by
      rcases c190 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v329 := by
      rcases c170 with a|a
      · exact absurd a u9
      · exact a
    have u11 : ¬v251 := by
      rcases c215 with a|a
      · exact absurd a u9
      · exact a
    have u12 : ¬v307 := by
      rcases c356 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u9
    have u13 : v286 := by
      rcases c340 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u10 a
    have u14 : v306 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u9
    have u15 : v245 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact absurd a u11
    have u16 : ¬v278 := by
      rcases c108 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u11
      · exact absurd n0 a
    have u17 : v249 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd u15 a
      · exact absurd a n1
    have u18 : ¬v206 := by
      rcases c284 with a|a
      · exact a
      · exact absurd a u16
    have u19 : ¬v275 := by
      rcases c355 with a|a|a|a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    rcases c351 with a|a
    · exact absurd a u19
    · exact absurd a u18
  have c358 : ¬v251 ∨ ¬v250 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c112 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c111 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c359 : ¬v251 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v278 := by
      rcases c223 with a|a
      · exact a
      · exact absurd n0 a
    rcases c358 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c360 : ¬v250 := by
    by_contra hc
    have u1 : ¬v251 := by
      rcases c359 with a|a
      · exact a
      · exact absurd hc a
    have u2 : v280 := by
      rcases c211 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v252 := by
      rcases c255 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v246 := by
      rcases c244 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v247 := by
      rcases c252 with a|a
      · exact a
      · exact absurd a u4
    have u6 : v294 := by
      rcases c336 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v283 := by
      rcases c307 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v299 := by
      rcases c300 with a|a
      · exact absurd u7 a
      · exact a
    rcases c357 with a|a
    · exact absurd hc a
    · exact absurd a u8
  have c361 : v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v250 := c360
    have u2 : ¬v294 := by
      rcases c307 with a|a
      · exact absurd a n0
      · exact a
    have u3 : ¬v320 := by
      rcases c262 with a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
    have u4 : v284 := by
      rcases c142 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n0
    have u5 : ¬v247 := by
      rcases c336 with a|a
      · exact a
      · exact absurd a u2
    have u6 : ¬v303 := by
      rcases c332 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v246 := by
      rcases c252 with a|a
      · exact absurd a u5
      · exact a
    have u8 : v248 := by
      rcases c240 with a|a
      · exact a
      · exact absurd a u5
    have u9 : ¬v252 := by
      rcases c244 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v280 := by
      rcases c255 with a|a
      · exact a
      · exact absurd a u9
    have u11 : v308 := by
      rcases c194 with a|a
      · exact absurd a u10
      · exact a
    have u12 : v251 := by
      rcases c211 with a|a
      · exact absurd a u10
      · exact a
    have u13 : v278 := by
      rcases c223 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v306 := by
      rcases c106 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd a u1
    have u15 : ¬v242 := by
      rcases c269 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v206 := by
      rcases c271 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u13 a
    have u17 : v249 := by
      rcases c346 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a u1
    have u18 : v245 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a n0
    have u19 : v304 := by
      rcases c21 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u12 a
      · exact absurd a u14
    have u20 : v286 := by
      rcases c13 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u4 a
      · exact absurd u12 a
      · exact absurd u17 a
      · exact absurd u18 a
    have u21 : ¬v329 := by
      rcases c347 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u11 a
    have u22 : v287 := by
      rcases c51 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u21
      · exact absurd u20 a
    rcases c166 with a|a|a|a
    · exact absurd u22 a
    · exact absurd u11 a
    · exact absurd a u21
    · exact absurd u20 a
  have c362 : ¬v299 := by
    by_contra hc
    have u1 : ¬v283 := by
      rcases c300 with a|a
      · exact a
      · exact absurd hc a
    rcases c361 with a|a
    · exact absurd a u1
    · exact absurd hc a
  have u1 : ¬v250 := c360
  have u2 : ¬v299 := c362
  have u3 : v283 := by
    rcases c324 with a|a
    · exact absurd a u2
    · exact a
  have u4 : v294 := by
    rcases c321 with a|a
    · exact absurd u3 a
    · exact a
  have u5 : v247 := by
    rcases c343 with a|a
    · exact absurd u4 a
    · exact a
  have u6 : ¬v246 := by
    rcases c204 with a|a
    · exact a
    · exact absurd u5 a
  have u7 : v252 := by
    rcases c232 with a|a
    · exact absurd a u6
    · exact a
  have u8 : ¬v308 := by
    rcases c190 with a|a
    · exact absurd u7 a
    · exact a
  have u9 : ¬v251 := by
    rcases c215 with a|a
    · exact absurd a u8
    · exact a
  have u10 : v278 := by
    rcases c199 with a|a|a
    · exact a
    · exact absurd a u1
    · exact absurd a u9
  have u11 : ¬v306 := by
    rcases c104 with a|a|a|a
    · exact a
    · exact absurd a u1
    · exact absurd u10 a
    · exact absurd a u9
  rcases c103 with a|a|a|a
  · exact absurd a u11
  · exact absurd a u1
  · exact absurd u10 a
  · exact absurd a u9
