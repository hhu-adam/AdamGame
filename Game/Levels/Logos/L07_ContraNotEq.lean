import Game.Metadata


World "Proposition"
Level 8

Title "Aus Falschem folgt vieles."

Introduction
"
Auftritt zweiter Querulant.
"

/--  -/
Statement (n : ℕ) (h : n ≠ n) : n = 37 := by
  Hint "
    **Du** Ist `{n} ≠ {n}` nicht auch ein Widerspruch?

    **Robo**: Probiers mal!"
  contradiction

Conclusion
"
**Du**: Ja, scheint funktioniert zu haben.

**Du**: Aber irgendwie kommt mir das immer noch ein wenig suspekt vor.
Jetzt habe ich bewiesen, dass eine beliebige natürliche Zahl gleich 37 ist?

**Robo**: Nein, nicht doch. Nur eine beliebige Zahl, die ungleich sich selbst ist, ist gleich 37.
Und gleich 38, und gleich 39, …

**Du**: Okay, okay, verstehe.
"

DisabledTactic tauto
