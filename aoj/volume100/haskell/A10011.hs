import Control.Applicative

main = do
  n <- getLine
  a <- words <$> getLine
  putStrLn $ unwords $ reverse a
