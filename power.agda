import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

open import IO
open import Data.String using (_++_)
open import Data.Nat as N

{- The definition of ℕ in Data.Nat -}
-- data ℕ : Set where
    -- zero : ℕ
    -- suc : ℕ -> ℕ

_add_ : ℕ -> ℕ -> ℕ
0 add n = n
(suc m) add n = suc (m add n)

_time_ : ℕ -> ℕ -> ℕ
0 time n = 0
(suc m) time n = n add (m time n)

_power_ : ℕ -> ℕ -> ℕ
m power 0 = 1
m power (suc n) = m time (m power n)

{- we use Reflexivity(refl) as proof for 3 power 4 is equal to 81 -}
_ : 3 power 4 ≡ 3 ^ 4
_ = refl

{- let's add a process to calculate 2 add 3 for example -}
_ : 2 add 3 ≡ 5
_ =
    begin
        2 add 3
    ≡⟨⟩
        (suc (suc 0)) add (suc (suc (suc 0)))
    ≡⟨⟩
        (suc ((suc 0) add (suc (suc (suc 0)))))
    ≡⟨⟩
        (suc (suc (0 add (suc (suc (suc 0))))))
    ≡⟨⟩
        (suc (suc (suc (suc (suc 0)))))
    ≡⟨⟩
        5
    ∎
