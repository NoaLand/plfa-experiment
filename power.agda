import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

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

_monus_ : ℕ -> ℕ -> ℕ
m monus 0 = m
0 monus n = 0
(suc m) monus (suc n) = m monus n

{- proof for 7 with suc... zero -}
_ : (suc (suc (suc (suc (suc (suc (suc zero))))))) ≡ 7
_ = refl

{- should return 5 when using 2 add 3 -}
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

{- should proof power works correctly like nature provided -}
_ : 3 power 4 ≡ 3 ^ 4
_ = refl

{- should return 1 when 3 monus 2 -}
_ : 3 monus 2 ≡ 1
_ = refl

{- should return 0 if m is biger than n -}
_ : 3 monus 5 ≡ 0
_ = refl

{- should return 0 if 0 monus any number -}
_ : 0 monus 3 ≡ 0
_ = refl
