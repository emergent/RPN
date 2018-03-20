module RPNSpec (spec) where

import Test.Hspec
import RPN

spec :: Spec
spec = do
    describe "solveRPN" $ do
        it "case 1-01" $ do
            solveRPN "10 4 3 + 2 * -" `shouldBe` -4.0

    describe "solveRPN" $ do
        it "case 1-02" $ do
            solveRPN "2 3.5 +" `shouldBe` 5.5

    describe "solveRPN" $ do
        it "case 1-03" $ do
            solveRPN "90 34 12 33 55 66 + * - +" `shouldBe` -3947.0

    describe "solveRPN" $ do
        it "case 1-04" $ do
            solveRPN "90 34 12 33 55 66 + * - + -" `shouldBe` 4037.0

    describe "solveRPN" $ do
        it "case 1-05" $ do
            solveRPN "90 3.8 -" `shouldBe` 86.2
                    
    describe "solveRPN - extension" $ do
        it "case 2-01" $ do
            solveRPN "2.7 ln" `shouldBe` (log 2.7)
                    
    describe "solveRPN - extension" $ do
        it "case 2-02" $ do
            solveRPN "10 10 10 10 sum 4 /" `shouldBe` 10.0
                    
    describe "solveRPN - extension" $ do
        it "case 2-03" $ do
            solveRPN "10 10 10 10 10 sum 4 /" `shouldBe` 12.5
                    
    describe "solveRPN - extension" $ do
        it "case 2-04" $ do
            solveRPN "10 2 ^" `shouldBe` 100.0
                            