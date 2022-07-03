module Calculus
    (integrate
    ) where

{- TODO: Better type signature
 This type was automatically inferred by Haskell compiler.
 It doesn't take into account that `n` should be a natural number-}
integrate :: (Enum a, Fractional a) => (a -> a) -> a -> a -> a -> a
integrate f a b n = ((sum $ map f [a+h, a + 2*h .. b-h]) + t) * h
          where t = (f a + f b) / 2
                h = (b - a) / n
