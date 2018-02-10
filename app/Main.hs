module Main where

import Lib

main :: IO ()
main = do
  words <- readWords
  phrase <- selectWords 4 $ filterWords $ splitWords words
  putStrLn $ unwords phrase
