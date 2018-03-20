module Main where

import RPN (solveRPN)
import System.Environment (getArgs)

main :: IO ()
main = do
    (exp:_) <- getArgs
    print exp
    print $ solveRPN exp

