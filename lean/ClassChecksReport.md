# Class-table checks

## Results and scope

1. **Complete:** `ClassInvariant.lean` checks the five-element M set, exact
   equality of maximal masks with FULL minus one member of M, and six-element
   maximal masks for every stored class. Its `not_crossCount_42` applies the
   existing exclusion theorem with X1 supplied by the checked table.
   Geometry-to-class correspondence and crossing containment remain inputs.
2. **Complete:** `ClassDataFromChirotope.lean` transcribes ordered-pair
   halfplane subsets, side masks, M, and inclusion-maximal members. It checks
   both recomputed fields against the JSON-derived table for all 14 classes.
3. **Partial result:** `OrderTypeClassification.lean` encodes the 135 point-set
   representatives and 360 cyclic orders. It checks that all 14 stored classes
   pass the exceptional test and checks reduction certificates for the 16
   Python-expected simple exceptional polygons onto all 14 stored classes.
   It does **not** prove that no other polygon ordering is exceptional, or that
   the generated cyclic-order list exhausts polygon orderings modulo symmetry.

The full `decide +kernel` probe of `exceptionalPolygons` against the explicit
16-pair expected list was terminated at the chosen 180-second limit:

```text
Full enumeration timeout, wall=180.41s, limit=180s
```

This is a measured limit of this direct computation attempt, not evidence that
Lean cannot check the classification with more time or a better certificate.
An earlier direct check of the 135 stored vertex orders was interrupted after
136.08 seconds and is not retained as a theorem. Point-set representatives must
be tested with polygon orderings; the Python test finds no exceptional polygon
in those 135 stored orders alone.

## E7 residue

The **135-representative list is complete** remains an external obligation.
Additionally, the full finite polygon enumeration and exhaustive reduction,
the geometric interpretation of the halfplane/crossing test, correspondence of
actual polygons and their labels to stored classes, and correctness and
geometric interpretation of the Lemma-2 windows and avoiding pairs are not
established by these files. The finite consistency result checks M and maximal
crossing sets only. No completeness or realizability theory is proved.

## Reproduction

From the repository root:

```sh
python3 python/classification/gen_lean_class_tables.py
python3 python/classification/gen_lean_order_type_check.py
export PATH="$HOME/.elan/bin:$PATH"
cd lean
lake build ClassInvariant ClassDataFromChirotope OrderTypeClassification
lake build
```

All three generated Lean sources reproduce byte-for-byte. The generators
validate the JSON triple order; the class generator also validates class
indices, vector lengths, and sign values. The kernel checks the generated Lean
values, not JSON parsing or Python source.

After the targeted build, reproduce the bounded full-enumeration probe from the
repository root with:

```sh
python3 python/classification/probe_lean_classification.py 180
```

The lakefile changes are append-only library registrations. Its pre-existing
explicit default-target list is unchanged, so use the targeted command above
to build the three new libraries as well as the ordinary default build.

The standalone M/maximal consistency check built in 29.88 seconds; the final
classification subcheck module built in 31.64 seconds. A direct additional
check of exceptionality on the 16 unrelabelled expected polygon witnesses was
interrupted after 166.12 seconds and is not retained. The retained theorem
checks simplicity and full sign-vector reduction, while exceptionality is
checked separately on the 14 stored classes; invariance of the test under
these relabellings is not asserted as a general theorem.

A forbidden-token scan of the three new Lean modules returned no matches for
`\b(sorry|admit|native_decide|unsafe|partial|axiom)\b`.
