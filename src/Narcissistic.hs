module Narcissistic
  ( narcissistic
  ) where

import           Data.Char (digitToInt)

narcissistic :: (Show n, Integral n) => n -> Bool
narcissistic n =
  (sum . map ((^ ((length . show) n)) . digitToInt) . show) n == fromIntegral n
