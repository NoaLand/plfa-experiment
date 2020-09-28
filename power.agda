open import IO
open import Data.String using (_++_)
open import Data.Nat as N
open import Data.Nat.Show as N

{- The definition of ℕ in Data.Nat -}
-- data ℕ : Set where
    -- zero : ℕ
    -- suc : ℕ -> ℕ

_plus_ : ℕ -> ℕ -> ℕ
zero plus n = n
(suc m) plus n = suc (m plus n)

_time_ : ℕ -> ℕ -> ℕ
zero time n = zero
(suc m) time n = n plus (m time n)

_power_ : ℕ -> ℕ -> ℕ
m power zero = suc zero
m power (suc n) = m time (m power n)

main = run (putStrLn (N.show (2 power 10)))
