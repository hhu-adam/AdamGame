import Game.Metadata

universe u₁ u₂ u₃

World "Iso"
Level 6

Title "Curry"

Introduction
"
In this level, you will learn about currying. Currying is the process of transforming a function that takes multiple arguments into a function that takes one argument and returns another function that takes the next argument, and so on, until all arguments have been supplied. This is useful because it allows you to partially apply a function, which means you can supply some of the arguments now and the rest later.

This insight was first made explicit separately by Moses Ilyich Schönfinkel in the 19th century and later in the 20th century by Haskell Curry.

"

open Function

Statement curry_equiv {A : Type u₁} {B : Type u₂} {C : Type u₃} :
    (A × B → C) ≃ (A → B → C) := by
  constructor
  · -- Branch
    --  exact curry
    use fun f a b => f (a, b)
  · -- Branch
    --   exact uncurry
    use fun f (a, b) => f a b
  · apply uncurry_curry
  · apply curry_uncurry

NewTheorem Function.curry_uncurry Function.uncurry_curry
