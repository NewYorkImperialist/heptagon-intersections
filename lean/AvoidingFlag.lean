/-
  AvoidingFlag.lean

  Checks the independent stored-flag/class-table mismatch failure mode (I3):
  every committed endgame certificate's Boolean agrees with membership in
  its class's avoiding_pairs table. This closes that data-consistency gap.

  It does NOT prove the exceptional classification (E7 in FilterSoundness):
  that these are the right 14 classes, with the right avoiding_pairs, remains
  an external obligation. It gives no geometric definition of "avoiding";
  the development has none. The broader geometric I3 interface described in
  Endgame.lean therefore still needs that interpretation and classification.

  The table below was generated with Python from
    data/exceptional_profiles/exceptional_profiles_14.json
  SHA-256: 4cb2625c4e728d76b38f6462778a9385eff7f180c36b2399474e9f0493372505
  Following gen_endgame_data.py, pairs are transcribed without alteration.
  Reproduce the table from the repository root with:

    python3 - <<'PY'
    import json
    from pathlib import Path
    src = Path('data/exceptional_profiles/exceptional_profiles_14.json')
    classes = json.loads(src.read_bytes())['classes']
    assert [c['class_index'] for c in classes] == list(range(14))
    for c in classes:
        pairs = ', '.join('(%d, %d)' % tuple(p) for p in c['avoiding_pairs'])
        print('  | %d => [%s]' % (c['class_index'], pairs))
    PY

  The kernel checks the committed Lean table against the committed Lean
  certificates; it does not read JSON or verify the generator. The digest and
  reproduction command make the transcription independently auditable.
-/
import Endgame

set_option maxRecDepth 100000

namespace Heptagon.Endgame

/-- Exact ordered pairs from each JSON class; unknown class indices return [].
No symmetrisation or geometric interpretation is performed. -/
def avoidingPairs : Nat → List (Nat × Nat)
  | 0 => [(1, 3), (1, 6)]
  | 1 => [(1, 3), (4, 6)]
  | 2 => [(1, 6), (3, 5)]
  | 3 => [(1, 3), (4, 6)]
  | 4 => [(1, 6), (2, 4)]
  | 5 => [(3, 5), (3, 6)]
  | 6 => [(1, 6), (4, 6)]
  | 7 => []
  | 8 => [(1, 6), (4, 6)]
  | 9 => [(0, 5), (2, 4)]
  | 10 => [(1, 6), (2, 4)]
  | 11 => [(1, 6), (2, 4)]
  | 12 => [(0, 2), (4, 6)]
  | 13 => [(1, 6), (2, 4)]

  | _ => []

/-- All 225 stored flags equal the predicate recomputed from the class table.
This checks equality, including the false case, rather than an implication. -/
theorem all_225_avoiding_flags_eq :
    ∀ c ∈ certificates,
      c.avoiding = decide ((c.pairI, c.pairJ) ∈ avoidingPairs c.classUsed) := by
  decide

/-- Downstream uses of the stored true flag can instead use class-table
membership, and conversely. Checked: the exact stored pair and classUsed of
any committed certificate agree with the table. Still assumed for geometric
use: correctness and completeness of the exceptional classification (E7),
the correspondence of the record's class and indices to an actual polygon,
and a geometric interpretation of avoiding. This proves none of those. -/
theorem avoiding_flag_iff_mem {c : Case} (hc : c ∈ certificates) :
    c.avoiding = true ↔ (c.pairI, c.pairJ) ∈ avoidingPairs c.classUsed := by
  rw [all_225_avoiding_flags_eq c hc]
  exact decide_eq_true_iff

/-- Each endgame witness pair belongs to its class table: combine the checked
flag/table equality with Endgame's checked witness consistency. Only table
membership is concluded; the geometric assumptions listed above remain. -/
theorem all_225_pairs_mem_avoidingPairs :
    ∀ c ∈ certificates, (c.pairI, c.pairJ) ∈ avoidingPairs c.classUsed := by
  intro c hc
  apply (avoiding_flag_iff_mem hc).mp
  have h := all_witnesses_consistent c hc
  simp only [witnessConsistent, Bool.and_eq_true] at h
  simp_all

end Heptagon.Endgame
