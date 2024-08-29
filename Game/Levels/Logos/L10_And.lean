import Game.Metadata

World "Proposition"
Level 11

Title "Und"

Introduction
"
Langsam wird die Schlange kürzer. Die nächste Formalosophin, ebenfalls häkelnd, hat folgendes Anliegen.
"

Statement (A B C : Prop) (h : A ∧ (B ∧ C)) : B := by
  Hint "
    **Du**: Jetzt müssen wir wohl die Annahme de-konstruieren.

    **Robo**: Ja, genau. Das geht am einfachsten mit `rcases {h} with ⟨h₁, h₂⟩`.

    **Du**: Moment, wie schreib ich *das* denn hier auf?

    **Robo**: Die bleiden Klammern schreibst du als `\\<` und `\\>`, oder gleichzeitig als `\\<>`.
    Und h₁ schreibst du einfach als `h\\1`. Aber du kannst dir auch einfach andere Namen
    für `h₁` und `h₂`, zum Beispiel `rcases {h} with ⟨hA, hBC⟩`"
  Branch
    rcases h with ⟨_h₁, _h₂⟩
    Hint "**Robo**: Das sieht doch schon besser aus! Gleich nochmal!"
  rcases h with ⟨_left, ⟨g , _right⟩⟩
  Hint (hidden := true) "**Robo**: Du hast einen Beweis dafür in den *Annahmen*."
  assumption

Conclusion
"
**Robo**: Du hättest das übrigens auch direkt verschachtelt schreiben können:
`rcases h with ⟨h₁, ⟨h₂ , h₃⟩⟩`.
"

NewTactic rcases obtain --TODO: remove `rcases` and replace by `obtain`.
DisabledTactic tauto
