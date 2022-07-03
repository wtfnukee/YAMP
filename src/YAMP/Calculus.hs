module Calculus
    (integrate
    ) where

integrate :: (Enum a, Fractional a) => (a -> a) -> a -> a -> a -> a
integrate f a b n = ((sum $ map f [a+h, a + 2*h .. b-h]) + t) * h
          where t = (f a + f b) / 2
                h = (b - a) / n
