import Game.Metadata



World "Function"
Level 23

Title "Triple"

Introduction
"
An equivalence `α : A ≃ B` between `A` and `B` consists of a pair of functions `f : A → B` and `g : B → A` such that `f ∘ g = id` and `g ∘ f = id`.

`finTwoArrowEquiv` constructs an equivalence between functions from `Fin 2` to `A` and pairs of elements of `A`, that is an equivalence
  ```
  (Fin 2 → A) ≃ A × A

  ```
In this level you construct an equivalence between functions from `Fin 3` to `A` and triples of elements of `A`.
"

open Function

Statement finThreeArrowEquiv : (Fin 3 → A) ≃ A × A × A := by
  refine {?..!}
  · exact fun f => (f 0, f 1, f 2)
  · exact fun t => fun
    | 0 => t.1
    | 1 => t.2.1
    | 2 => t.2.2
  · intro f
    simp
    funext x
    cases x
    aesop
  · intro t
    simp
