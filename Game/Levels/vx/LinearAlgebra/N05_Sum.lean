import Game.Metadata



open Submodule

World "Module2"
Level 5

Title "Lineare Abbildung"

Introduction
"
Die interne Summe von Untermodulen wird in Lean mit `⊔` (`\\sup`) geschrieben.
"

/--
Zeige, dass `V₁ ⊔ V₂` tatsächlich die interne Summe `⟨V₁ ∪ V₂⟩` ist.
 -/
Statement {K V : Type _} [Field K] [AddCommMonoid V] [Module K V] (V₁ V₂ : Submodule K V) :
    V₁ ⊔ V₂ = span K ( (V₁ : Set V) ∪ V₂ ) := by
  rw [span_union]
  simp
