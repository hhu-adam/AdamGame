import Game.Metadata
import Game.Levels.SetTheory.L16_Disjoint



World "SetTheory2"
Level 4

Title "" -- ""

Introduction
"
"

open Set

/--  -/
Statement :
    {2, 7} ⊆ {n : ℕ | n = 2 ∨ (n ≤ 10 ∧ Odd n)} := by
  rw [setOf_or, setOf_and]
  intro x hx
  rw [mem_union, mem_inter_iff]
  simp_rw [mem_setOf, mem_insert_iff, mem_singleton_iff] at *
  obtain hx | hx := hx
  left
  assumption
  right
  constructor
  linarith
  use 3
  rw [hx]
  ring

NewTheorem Set.setOf_or Set.setOf_and Set.mem_inter_iff
TheoremTab "Set"
