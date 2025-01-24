import Game.Metadata



World "Module"
Level 5

Title "Untervektorräume"

Introduction
"
Elemente aus einem Untervektorraum $U$ wählt man gleich aus, wie Elemente in einer Menge.
Nämlich man nimmt ein Element `(x : V)` und sagt, dass es in `U` liegt mit `x ∈ U` (`\\in`).
"

/-- TODO: Spannendere Aufgaben. -/
Statement {K V : Type _} [Field K] [AddCommMonoid V] [Module K V] (U : Submodule K V) :
    ∀ (x : V), x ∈ U ∨ x ∉ U := by
  intro x
  rw [or_iff_not_imp_left]
  tauto
