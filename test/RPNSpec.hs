module RPNSpec (spec) where

import Test.Hspec
import RPN

spec :: Spec
spec = do
    describe "solveRPN" $ do
        it "case 1-01" $ do
            solveRPN "10 4 3 + 2 * -" `shouldBe` Just (-4.0)

    describe "solveRPN" $ do
        it "case 1-02" $ do
            solveRPN "2 3.5 +" `shouldBe` Just 5.5

    describe "solveRPN" $ do
        it "case 1-03" $ do
            solveRPN "90 34 12 33 55 66 + * - +" `shouldBe` Nothing

    describe "solveRPN" $ do
        it "case 1-04" $ do
            solveRPN "90 34 12 33 55 66 + * - + -" `shouldBe` Just 4037.0

    describe "solveRPN" $ do
        it "case 1-05" $ do
            solveRPN "90 3.8 -" `shouldBe` Just 86.2
                    
    describe "solveRPN - extension" $ do
        it "case 2-01" $ do
            solveRPN "2.7 ln" `shouldBe` Just (log 2.7)
                    
    describe "solveRPN - extension" $ do
        it "case 2-02" $ do
            solveRPN "10 10 10 10 sum 4 /" `shouldBe` Just 10.0
                    
    describe "solveRPN - extension" $ do
        it "case 2-03" $ do
            solveRPN "10 10 10 10 10 sum 4 /" `shouldBe` Just 12.5
                    
    describe "solveRPN - extension" $ do
        it "case 2-04" $ do
            solveRPN "10 2 ^" `shouldBe` Just 100.0
                    
    describe "solveRPN - extension" $ do
        it "case 2-05" $ do
            solveRPN "10 4 4 product 16 /" `shouldBe` Just 10.0

    describe "solveRPN - error" $ do
        it "case 3-01" $ do
            solveRPN "go to hell" `shouldBe` Nothing

    describe "solveRPN - error" $ do
        it "case 3-02" $ do
            solveRPN "1 wawawa" `shouldBe` Nothing

