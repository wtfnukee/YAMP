module LinearAlgebra where

-- Vectors are Column Vectors
data Vector i = Vector [i] deriving Show

instance (Eq i) => Eq (Vector i) where
    (Vector v1) == (Vector v2) = v1 == v2
instance Functor Vector where
    fmap f (Vector v) = Vector (map f v)

instance (Num i, Floating i) => Num (Vector i) where
    (Vector v1) + (Vector v2) = Vector (zipWith (+) v1 v2)
    (Vector v1) - (Vector v2) = Vector (zipWith (-) v1 v2)
    abs (Vector v) = Vector [sqrt $ sum $ map square v]
        where square x = x * x
    negate = fmap negate
