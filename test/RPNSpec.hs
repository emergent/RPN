module RPNSpec (spec) where

import Test.Hspec
import RPN

spec :: Spec
spec = do
    describe "solveRPN" $ do
        it "case 01" $ do
            solveRPN "10 4 3 + 2 * -" `shouldBe` -4.0

    describe "solveRPN" $ do
        it "case 02" $ do
            solveRPN "2 3.5 +" `shouldBe` 5.5

    describe "solveRPN" $ do
        it "case 03" $ do
            solveRPN "90 34 12 33 55 66 + * - +" `shouldBe` -3947.0

    describe "solveRPN" $ do
        it "case 04" $ do
            solveRPN "90 34 12 33 55 66 + * - + -" `shouldBe` 4037.0

    describe "solveRPN" $ do
        it "case 05" $ do
            solveRPN "90 3.8 -" `shouldBe` 86.2
                    