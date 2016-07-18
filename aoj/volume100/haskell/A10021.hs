import Control.Applicative
import Data.List

main = do
  n <- getLine
  a <- lines <$> getContents
  putStrLn $ head $ sort a
