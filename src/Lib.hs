module Lib
( readWords,
  splitWords,
  filterWords,
  selectWords
) where

import Data.Char ( isAlphaNum, isLower )
import Data.Random.Extras ( sample )
import Data.Random hiding ( sample )
import System.IO ( readFile )

wordsPath = "/usr/share/dict/words"

readWords :: IO String
readWords = readFile wordsPath

splitWords :: String -> [String]
splitWords = words

filterWords :: [String] -> [String]
filterWords = filter (\x -> isAlphaStr x && isLowerStr x)
  where
    isAlphaStr = all isAlphaNum
    isLowerStr = all isLower

selectWords w n = runRVar (sample w n) StdRandom


