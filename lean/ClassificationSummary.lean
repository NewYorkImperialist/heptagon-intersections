/-
THE EXCEPTIONAL CLASSIFICATION, AS FAR AS IT IS PROVED.

This module proves nothing new.  It collects the four results that together are
what the project means by "the classification", so that a reader has one place
to look and one place to see what is missing.  Each conjunct is an existing
theorem; the point is the assembly and the scope note.

WHAT IS ASSUMED AND NOT PROVED.  The completeness half rests on an induction
hypothesis that is NOT formalised anywhere in this development:

    every rank-3 chirotope on 7 elements restricts, by deleting one element,
    to one of the 16 stored six-element representatives.

That is the mathematical content of the stage-by-stage construction in
`python/core/chiro.py`.  It is stated here in a comment rather than as a Lean
hypothesis because the development has no type of "arbitrary rank-3 chirotope on
7 elements" to quantify over -- which is itself part of what is missing.  A
reader who wants to attack this development should start there.

ALSO NOT PROVED: any geometric reading.  `simple` and `exceptional` are
predicates on chirotopes.  That they characterise simple heptagons and
exceptionality for actual polygons in the plane is not formalised, and the
development has no geometric definition of "avoiding" either.  See
docs/verification-status.md rows 32, 34 and 13.

AND: the 135 are a SUPERSET of the realizable order types, since only the
necessary Grassmann-Plucker and Radon conditions are imposed.  A superset is
what an exclusion argument needs.
-/
import OTBridge
import OTCompleteAll
import OTEnumAll

namespace Heptagon.ClassificationSummary
open Heptagon.OTComplete Heptagon.OTEnum Heptagon.OrderTypeClassification

/-- **The classification, assembled.**  Modulo the induction hypothesis in the
module header and any geometric reading:

1. the one-point extension search over the 16 stored six-element
   representatives finds exactly the 1,657 witnessed survivors;
2. every survivor is carried onto a stored seven-element representative by the
   explicit permutation its witness names;
3. the two developments quantify over the *same* 135 representatives;
4. over those 135, exactly 16 (representative, cyclic order) pairs give a simple
   heptagon with no uncrossable four-subset of sides;
5. those 16 reduce, by explicit dihedral relabellings, onto stored classes, and
   all 14 classes occur. -/
theorem classification :
    allSurvivors = witnessPairs
  ∧ okOf witnesses = true
  ∧ (∀ c : Fin 135, Heptagon.OTBridge.unpack (stored135 c) = orderSigns c)
  ∧ exceptionalPolygons = expectedPolygons
  ∧ exceptionalPolygons.length = 16
  ∧ (reductions.map (fun w => w.cls)).toFinset = Finset.range 14 :=
  ⟨allSurvivors_eq, witnesses_ok, Heptagon.OTBridge.stored135_eq_orderSigns,
   exceptionalPolygons_eq_expected,
   sixteen_labelled_fourteen_classes.1,
   sixteen_labelled_fourteen_classes.2.2⟩

end Heptagon.ClassificationSummary
