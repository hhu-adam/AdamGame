import Game.Metadata
import Game.Levels.SetTheory.L01_Univ

World "SetTheory"
Level 2

Title "leere Menge"

Introduction
"
Ihr zieht also durch die Gegend und redet mit den Leuten. Ein Junge rennt zu euch und fragt:
"

open Set

Statement Set.not_mem_empty {A : Type} (x : A) :
    x ∉ (∅ : Set A) := by
  Hint "
    **Du**: Kein Element ist in der leeren Menge enthalten? Das ist ja alles
    tautologisches Zeugs...

    **Robo**: Dann behaupte das doch."
  simp

DefinitionDoc Set.empty as "∅"

NewDefinition Set.empty
--NewTheorem Set.mem_univ
TheoremTab "Set"


Conclusion "
Der Junge rennt weiter.

**Du**: So wird das ganze schon angenehmer.

**Robo**: Die Leere Menge schreibst du mit `\\empty` falls du die nochmals brauchst.
"
