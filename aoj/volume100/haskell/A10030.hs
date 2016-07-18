import Control.Applicative
import Data.Set

main = do
  n <- getLine
  s <- fromList . fmap (read :: String -> Int) . words <$> getLine
  q <- getLine
  t <- fromList . fmap (read :: String -> Int) . words <$> getLine
  putStrLn $ show $ size $ s `intersection` t
