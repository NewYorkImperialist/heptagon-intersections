/-
  CounterexampleCount.lean
  ========================

  THE CAPSTONE OF ENUMERATION OBLIGATIONS (1) AND (2).

  `EnumerationDomain.lean` proves obligation (1): a configuration with 40
  properly crossing side pairs has `toMasks K` in the abstract search domain.
  `DomainCount.lean` proves obligation (2): that domain has exactly 13 003 620
  elements.  Separately, each is half a sentence.  This file joins them:

      a hypothetical counterexample to f(7,7) = 38 is one of exactly
      13 003 620 mask functions.

  WHAT THIS IS NOT.  It is NOT a proof that the search examined those
  13 003 620 objects, and NOT a proof that the filters applied to them are
  sound.  Those are obligations (3) and (4), and nothing here or anywhere else
  in this development addresses them.  A counterexample is confined to a set of
  known, finite size; whether the programs that swept that set swept all of it
  remains unverified.

  The hypothesis `crossCountC K = 40` is also an INPUT, not a consequence: why
  a counterexample must have exactly 40 crossings (rather than 39 or 42) is
  Lemma A together with parity, argued outside this file.
-/

import DomainCount

set_option autoImplicit false
set_option maxRecDepth 8000

namespace Heptagon
namespace EnumerationDomain

open Heptagon.DisjointnessGraph

/-- The mask function of a configuration, packaged as an element of `MaskFn`.
Well-defined because every mask is a 7-bit number (`toMasks_lt_128`). -/
def maskFnOf (K : Config) : MaskFn :=
  fun i => ⟨toMasks K i.val, toMasks_lt_128 K i.val i.isLt⟩

/-- Packaging and unpackaging are inverse: reading `maskFnOf K` back as a
mask function `Nat → Nat` returns `toMasks K` on the nose.  Outside `0 … 6`
both sides are `0` — `toMasks` because `masks K` has length 7. -/
theorem toNatFun_maskFnOf (K : Config) : toNatFun (maskFnOf K) = toMasks K := by
  funext i
  by_cases h : i < 7
  · simp [toNatFun, maskFnOf, dif_pos h]
  · have : (masks K).length ≤ i := by rw [masks_length]; omega
    simp [toNatFun, dif_neg h, toMasks, List.getElem?_eq_none this]

/-- **Obligation (1), transported to `MaskFn`.** -/
theorem maskFnOf_mem_domainFinset (K : Config) (h40 : crossCountC K = 40) :
    maskFnOf K ∈ domainFinset := by
  rw [mem_domainFinset, toNatFun_maskFnOf]
  exact toMasks_inDomain_of_crossCount_eq_40 K h40

/-- **THE CAPSTONE.**  Every pair of simple heptagons in general position with
exactly 40 properly crossing side pairs — that is, every hypothetical
counterexample to `f(7,7) = 38`, at the orientation level — has a mask function
lying in an explicitly enumerated set of exactly `13 003 620` elements.

Read the scope note at the head of this file before quoting this. -/
theorem counterexample_confined :
    domainFinset.card = 13003620 ∧
    ∀ K : Config, crossCountC K = 40 → maskFnOf K ∈ domainFinset :=
  ⟨domainFinset_card, fun K h40 => maskFnOf_mem_domainFinset K h40⟩

/-- The certificate configuration has 38 crossings, not 40, so it is *not* a
counterexample and its mask function is correspondingly outside the domain.
Guards against the capstone being vacuously about nothing. -/
theorem cert_not_mem_domainFinset : maskFnOf certConfig ∉ domainFinset := by
  rw [mem_domainFinset, toNatFun_maskFnOf]
  exact cert_not_inDomain

end EnumerationDomain
end Heptagon
