import Game.Metadata
import Game.Levels.SetTheory.L02_Empty


World "SetTheory"
Level 3

Title "Teilmengen"

Introduction
"
Ihr bemerkt, dass mit dem Jungen noch zwei andere
Kinder zuhörten. Eines der beiden Mädchen hat ebenfalls eine Frage.
"

-- Hat man zwei Mengen `(A B : Set ℕ)` kann man fragen, ob diese Teilmengen
-- voneinander sind: `A ⊆ B` (`\\sub`/`\\ss`) ist die Notation für Teilmengen, die auch gleich
-- sein können.

-- `A ⊆ B` ist als `∀ x, x ∈ A → x ∈ B` definiert, das heisst, ein `⊆` kann immer auch mit `intro x hx`
-- angegangen werden.

-- Die Taktik `tauto` macht das automatisch, aber um dies zu lernen ist `tauto` hier deaktiviert.
-- Benutze also `intro`:

open Set

Statement Set.subset_univ (A : Set ℕ) : A ⊆ univ := by
  Hint "**Robo**: `A ⊆ B` ist als `∀ x, x ∈ A → x ∈ B` definiert.

  **Du**: Also kann ich mit `intro` anfangen, wie ich das bei einem `∀` funktioniert?

  **Robo**: Das ist korrekt."
  intro h _hA
  Hint (hidden := true) "**Robo**: Das dürfte eine Trivialität sein."
  simp

/--
`A ⊆ B` ist definiert als `∀ x, x ∈ A → x ∈ B`.

(`\sub`)
-/
DefinitionDoc Set.Subset as "⊆"

DisabledTactic tauto simp
NewDefinition Set.Subset
TheoremTab "Set"

Conclusion "Damit drehen sich die beiden Mädchen um und folgen dem Jungen."
