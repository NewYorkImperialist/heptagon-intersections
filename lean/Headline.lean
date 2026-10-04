import MainTheorem
import RealUpperBound
import AKR9
import Pair9Shift

/-!
# `Headline` — the build target that covers the punchline

`lakefile.toml` declares one `[[lean_lib]]` per committed `.lean` file, but
`defaultTargets` deliberately omits the twenty-two modules of the AKR §9 line
of work, `AKR9` and `Pair9Shift` among them.  That omission is recorded in
`docs/verification-status.md` (rows 66, 71, 81, 105, 109, 119) and in
`docs/uniform-eps-lean.md`; its purpose is to keep the §9 development out of
the 1,756-target default build, which is dominated by the 1,084 `OTEnum*` /
`Strat*` enumeration shards.

The cost of that choice is that the documented command — a bare `lake build` —
**does not build the headline theorems**.  This module closes the gap without
touching `defaultTargets`: it is a leaf whose only content is the four roots of
the live chain, so

    lake build Headline

builds their closure (331 modules) plus `Headline` (332) and nothing else.  No
enumeration shard is in that closure, so the target cannot invalidate them.

The four roots, weakest hypothesis last:

| root             | headline theorem                                  |
|------------------|---------------------------------------------------|
| `MainTheorem`    | `Heptagon.MainTheorem.isGreatest_38`              |
| `RealUpperBound` | `Heptagon.RealUpperBound.isGreatest_38_real`      |
| `AKR9`           | `Heptagon.AKR9.isGreatest_38_of_E9`               |
| `Pair9Shift`     | `Heptagon.Pair9Shift.isGreatest_38_of_coincFree`  |

Non-vacuity for the last of these — a witness for every hypothesis, and the
bound attained rather than merely asserted — is bundled in the final section
of `Pair9Shift.lean`, `Heptagon.Pair9Shift.nonVacuity`.

This file declares nothing.  It exists so that one command covers the chain.
-/

set_option autoImplicit false

#print axioms Heptagon.MainTheorem.isGreatest_38
#print axioms Heptagon.RealUpperBound.isGreatest_38_real
#print axioms Heptagon.AKR9.isGreatest_38_of_E9
#print axioms Heptagon.Pair9Shift.isGreatest_38_of_coincFree
#print axioms Heptagon.Pair9Shift.points9_le_38_of_coincFree
