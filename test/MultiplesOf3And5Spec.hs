module MultiplesOf3And5Spec
  ( spec
  ) where

import           MultiplesOf3And5 (solution)
import           Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    solution 10 `shouldBe` 23
    solution 20 `shouldBe` 78
    solution 200 `shouldBe` 9168
