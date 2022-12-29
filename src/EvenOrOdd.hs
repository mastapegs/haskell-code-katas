module EvenOrOdd
  ( evenOrOdd
  ) where

evenOrOdd :: Integral a => a -> [Char]
evenOrOdd n =
  case even n of
    True  -> "Even"
    False -> "Odd"
