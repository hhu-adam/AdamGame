import Game.Metadata

World "Function2"

Title "Inverse"
Introduction
"
Eigentlich hast du nur beiläufig Robo gefragt, ob bijektiv nicht auch bedeute, dass
eine Inverse Funktion existiere. Jetzt steht ihr aber schon seit einer halben Stunde rum
und der Gelehrte möchte wissen, wie das den genau ginge.

Offensichtlich kennt er diese Aussage als `Function.bijective_iff_has_inverse` aus seinen Büchern,
aber er möchte, dass du ihm das hier und jetzt nochmals von Grund auf zeigst.
"

namespace Function

--TODO: `unfolding` at random places breaks all the hints...
Statement {A B : Type} (f : A → B) :
    Bijective f ↔ ∃ g, LeftInverse g f ∧ RightInverse g f := by
  -- Note the fact that one sees `LeftInverse` but `Function.RightInverse` is because
  -- some Mathlib init-file defines `_root_.RightInverse`. mathlib4#11415 investigates this.
  Hint "**Du**: Nah da sagt mir so manches nichts, aber ich kann ja mal mit dem `↔` anfangen,
  das kenn ich ja schon."
  constructor
  · intro h
    Hint "
      **Robo**: Tipp. Teil doch `Bijective` mit `rcases {h} with ⟨hI, hS⟩` in
      `Injective` und `Surjective` auf!"
    rcases h with ⟨hI, hS⟩
    Hint "
      **Du**: Ja was ist eigentlich die Inverse von `{f}`…?

      **Robo**: Hast du eine Idee?

      **Du**: Also von der Surjektivität weiss ich, dass für alle `y` ein Urbild existiert
      und mit der Injektivität könnte ich dann zeigen, dass dieses eindeutig ist.

      **Robo**: Also Schritt für Schritt: Mit `fun y ↦ ({hS} y).choose ` kannst du eine Funktion
      definieren, die `y` irgendein Urbild zuweist.

      **Du**: Die ist aber nicht wohldefiniert, oder?

      **Robo**: In der Mathe nicht. In Lean geht das ganz gut, aber es ist dann unmöglich etwas
      darüber zu beweisen, wenn es mehrere Möglichkeiten gäbe."
    Branch
      let g := fun x => (hS x).choose
      use g
      have hr : RightInverse g f := by
        intro x
        apply Exists.choose_spec (hS x)
      constructor
      · Hint "**Robo**: fang mal mit `intro` an."
        intro x
        have H : f (g (f x)) = f x  := by rw [hr (f x)]
        apply hI
        exact H
        -- Hint "**Du**: kompliziert.

        -- **Robo**: Aber mit `simp` kannst du es ja etwas vereinfachen."
        -- simp
        -- now we're back on the path with no `g` in the goal
        -- apply Exists.choose_spec (hS (f x))
      · Hint "**Robo**: Gut! Auf zum Rechtsinversen! Fang auch hier wieder mit `intro` an."
        intro x
        -- Hint "**Du**: Kann ich das vereinfachen?"
        -- simp
        -- -- back on the path witout `g`
        apply Exists.choose_spec (hS x)
    use fun x => (hS x).choose
    constructor
    · Hint "**Robo**: fang mal mit `intro` an."
      intro x
      Hint "**Du**: kompliziert.

      **Robo**: Aber mit `simp` kannst du es ja etwas vereinfachen."
      simp
      Hint "**Du**: Das kann ich jetzt nicht zeigen solange ich nicht weiss, dass nur genau ein
      Urbild besteht.

      **Robo**: Dann wende doch mit `apply {hI}` die Injektivität an!"
      apply hI
      Hint "**Robo**: Dies ist jetzt eine etwas tautologische Aussage. In Lean ist das
      `Exists.choose_spec`. Konkret `apply Exists.choose_spec ({hS} (f x))`."
      apply Exists.choose_spec (hS (f x))
    · Hint "**Robo**: Gut! Auf zum Rechtsinversen! Fang auch hier wieder mit `intro` an."
      intro x
      Hint "**Du**: Kann ich das vereinfachen?"
      simp
      Hint "
        **Du**: Also wieder `Exists.choose_spec`?

        **Robo**: Genau! Diesmal mit dem Argument `({hS} x)`."
      apply Exists.choose_spec (hS x)
  · Hint "**Robo**: Die eine Richtung ist gezeigt. Jetzt auf zur Rückrichtung!"
    intro h
    Hint "**Robo**: Zerlege `{h}` noch soweit du kannst!"
    rcases h with ⟨g, h⟩
    Hint "**Robo**: Das UND auch noch!"
    rcases h with ⟨hL, hR⟩
    Hint "**Robo**: Das `Bijective` kannst du auch aufteilen."
    constructor
    · Hint "**Robo**: Injektivität ist der schwierige Teil. Fang mal an mit `intro`."
      intro a b hab
      Hint "
        **Robo**: Im nächsten Schritt must du `LeftInverse` brauchen um das Goal
        zu `g (f a) = g (f b)` zu wechseln: schau mal was du mit
        `have w := {hL} {a}` kriegst und ob du das mit `rw` benutzen kannst."
      have w := hL a
      rw [← w, ← hL b]
      Hint (hidden := true) "
        **Du**: Wenn die Argumente `f a = f b` gleich sind, ist dann auch `g (f a) = g (f b)`,
        wie sag ich das?

      **Robo**: Also wenn du `f a = f b` hast, kannst du ja auch einfach damit umschreiben."
      rw [hab]
    · Hint "Die Surjektivität sollte einfacher sein."
      intro x
      Hint (hidden := true) "**Robo**: Psst, mit `RightInverse g f` weisst du, dass `f (g x) = x`.
      Hilft das rauszufinden was du hier brauchen musst?"
      use g x
      Hint (hidden := true) "**Robo**: Du kannst die `RightInverse`-Annahme einfach mit `rw`
      benutzen."
      rw [hR]

NewDefinition LeftInverse RightInverse
NewTheorem Exists.choose Exists.choose_spec
DisabledTheorem Function.bijective_iff_has_inverse
TheoremTab "Logic"


Conclusion
"
Endlich entkommt ihr der Bibliothek.

**Robo**: Da würden mich keine zehn Pferde nochmals hineinbringen!

**Du**: Von wegen Pferden, wie viele PS hat eigentlich unser Raumschiff?
"
