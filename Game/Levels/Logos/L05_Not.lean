import Game.Metadata

World "Proposition"
Level 6

Title "Not"

Introduction
"
Der Schelm hat noch eine Schwester dabei.
"

Statement : ¬False := by
  Hint "
    **Robo**: Dieses Zeichen `¬` bedeutet Negation. Also wenn eine Aussage `(A : Prop)`
    wahr ist, dann ist `¬A` falsch, und umgekehrt.

    **Du**: Und `False` ist wahrscheinlich die Aussage, die immer falsch ist?

    **Robo**: Ja, richtig.

    **Du**: Ist das jetzt nicht doch wieder trivial?

    **Robo**: Probier mal!"
  trivial

Conclusion
"
Die Schwester lacht und eilt ihrem Bruder hinterher.
"

DisabledTactic tauto
