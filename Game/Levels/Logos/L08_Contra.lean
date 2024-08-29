import Game.Metadata


World "Proposition"
Level 9

Title "Aus Falschem folgt vieles."

Introduction
"
Auftritt dritter Querulant.
"

/--  -/
Statement (n : ℕ) (h : n = 10) (g : n ≠ 10) : n = 42 := by
  Hint "
    **Du** Wieder ein Widerspruch in den Annahmen?

    **Robo**: Ich sehe, du hast langsam den Dreh raus."
  contradiction

Conclusion
"
**Robo**: Gut gemacht. Bei dieser Frage ist auch ein bisschen offensichtlicher,
worin der Widerspruch besteht: Die Annahme `n ≠ 10` ist genau die Negation von `n = 10`.
Man muss `≠` immer als `¬(· = ·)` lesen.
"

DisabledTactic tauto
