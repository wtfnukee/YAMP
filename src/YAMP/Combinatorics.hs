module YAMP.Combinatorics 
    (product
    , permutations
    , combinations) where
import Prelude hiding (product)

product :: Integral n => [a] -> n -> [[a]]
product = undefined

permutations :: (Eq a) => [a] -> [[a]]
permutations [] = [[]]
permutations xs = [a:x | a <- xs, x <- (permutations $ filter (\x-> x /= a) xs)]

combinations :: Integral n => n -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations _ [] = []
combinations n (x:xs) = map (x:) (combinations (n-1) xs) ++ combinations n xs
