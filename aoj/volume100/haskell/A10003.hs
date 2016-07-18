import Control.Applicative

main = do
  [a, b] <- fmap (read :: String -> Int) . words <$> getLine
  putStrLn $ toRelationship a b

toRelationship a b
  | a == b    = "a == b"
  | a < b     = "a < b"
  | a > b     = "a > b"
  | otherwise = ""
