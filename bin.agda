import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

import Data.Nat using (ℕ; zero; suc; _+_; _*_; _^_; _∸_)

data Bin : Set where
    <> : Bin
    _O : Bin -> Bin
    _I : Bin -> Bin

{- should proof Bin equality -}
_ : (<> O) ≡ (<> O)
_ = refl

_ : (<> I) ≡ (<> I)
_ = refl

{- TODO: need to implement inc func -}
-- inc : Bin -> Bin
-- inc (<> O) = (<> I)
-- inc (<> I) = (<> O)

{- should increase successfully -}
-- _ : inc (<> O) ≡ (<> I)
-- _ = refl
