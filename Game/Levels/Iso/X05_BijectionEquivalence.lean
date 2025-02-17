import Game.Metadata


World "Iso"
Level 5

Title "Bijection of Equivalence"

Introduction
"
In this level you show that there every bijection gives rise to an equivalence.
"

open Function

Statement Equiv.ofBijective {A B : Type} (f : A → B) (h : Bijective f) : A ≃ B := by
  have := bijective_iff_has_inverse.mp h
  choose g hg using this
  constructor
  · exact f
  · exact g
  · exact hg.left
  · exact hg.right
