module Main where

import RPN (solveRPN)
import System.Environment (getArgs)

main :: IO ()
main = do
    ex:_ <- getArgs
    print ex
    print $ solveRPN ex
