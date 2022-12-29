module EvenOrOddSpec where

import           EvenOrOdd
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do
  describe "Examples" $ do
    it "Evens:" $ do
      evenOrOdd 2 `shouldBe` "Even"
      evenOrOdd 0 `shouldBe` "Even"
    it "Odds" $ do
      evenOrOdd 7 `shouldBe` "Odd"
      evenOrOdd 1 `shouldBe` "Odd"
