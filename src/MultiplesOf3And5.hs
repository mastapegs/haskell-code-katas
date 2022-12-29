module MultiplesOf3And5
  ( solution
  ) where

solution :: Integer -> Integer
solution number =
  (sum . filter (\num -> num `mod` 3 == 0 || num `mod` 5 == 0))
    [1 .. number - 1]
