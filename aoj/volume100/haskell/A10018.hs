import Data.Char

main = do
  line <- getLine
  putStrLn $ fmap toggleCase line

toggleCase c
  | isUpper c = toLower c
  | isLower c = toUpper c
  | otherwise = c
