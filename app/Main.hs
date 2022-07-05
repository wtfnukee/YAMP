module Main where
import YAMP.LinearAlgebra.Vector
import YAMP.LinearAlgebra.Matrix

main :: IO ()
main = print $ Matrix [Vector [2..4]]
