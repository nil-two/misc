import Control.Applicative
import Data.List

main = do
  n    <- getLine
  nums <- fmap (read :: String -> Int) . words <$> getLine
  putStrLn
    $ unwords
    $ fmap show
    $ sort nums
