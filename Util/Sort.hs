module Util.Sort (quicksort) where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort left ++ [x] ++ quicksort right
    where left = [ y | y <- xs, y <= x ]
          right = [ y | y <- xs, x < y ] 
