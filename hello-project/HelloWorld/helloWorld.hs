module Main where
 
import Hello
import World

main :: IO ()
main = putStr hello >> putStr " " >> putStrLn world
