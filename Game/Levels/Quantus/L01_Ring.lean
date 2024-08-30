import Game.Metadata

World "Predicate"
Level 1

Title "Natürliche Zahlen"

Introduction "Du schaust dir die erste Seite an."

Statement (x y : ℕ) : (x + y) ^ 2 = x ^ 2 + 2 * x * y + y ^ 2 := by
  Hint "**Du**: Das ist doch Schulmathematik! Man rechnet das einfach aus,
    indem man die Terme umsortiert.

    **Robo**: Wenn die Gleichung stimmt, kannst du auf Leansch sogar einfach
    mit `ring` beweisen, dass das so ist.

    **Du**: Aber `ℕ` ist doch gar kein Ring?

    **Robo**: `ring` funktioniert sogar für sogenannte Halbringe. Ich glaube,
    man sagt `ring`, weil es in (kommutativen) Ringen am besten funktioniert."
  ring

Conclusion ""

NewTactic ring
