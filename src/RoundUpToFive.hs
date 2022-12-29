module RoundUpToFive
  ( roundToNext5
  ) where

roundToNext5 :: Int -> Int
roundToNext5 n =
  if modulo == 0
    then n
    else n + (5 - modulo)
  where
    modulo = n `mod` 5
