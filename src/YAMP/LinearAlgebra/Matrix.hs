{-# LANGUAGE ScopedTypeVariables #-}

module YAMP.LinearAlgebra.Matrix where

import YAMP.LinearAlgebra.Vector

data Matrix v = Matrix [Vector v]

instance (Eq v) => Eq (Matrix v) where
    (Matrix m1) == (Matrix m2) = m1 == m2

instance (Show v) => Show (Matrix v) where
    show (Matrix m) = undefined

{-
instance Functor Vector where
    fmap f (Vector v) = Vector (map f v)

instance Foldable Vector where
    foldr f i (Vector v) = foldr f i v

instance (Num i, Floating i) => Num (Vector i) where
    (Vector v1) + (Vector v2) = Vector (zipWith (+) v1 v2)
    (Vector v1) - (Vector v2) = Vector (zipWith (-) v1 v2)
    (Vector v1) * (Vector v2) = undefined
    abs (Vector v) = Vector [sqrt $ sum $ map square v]
    where square x = x * x
    negate = fmap negate
    signum = undefined -- You can't really take a sign of vector
    fromInteger = undefined
-}
