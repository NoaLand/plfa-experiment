open import IO
open import Data.Integer using (ℤ; +_; show)
open import Data.String using (_++_)

data ℕ : Set where
    zero : ℕ
    suc : ℕ -> ℕ

_+_ : ℕ -> ℕ -> ℕ
zero + n = zero
(suc m) + n = suc (m + n)

_*_ : ℕ -> ℕ -> ℕ
zero * n = zero
(suc m) * n = n + (m * n)

_^_ : ℕ -> ℕ -> ℕ
m ^ zero = suc zero
m ^ (suc n) = m * (m ^ n)

{-# BUILTIN NATURAL ℕ #-}
{-# BUILTIN NATPLUS _+_ #-}
{-# BUILTIN NATTIMES _*_ #-}
