import Control.Applicative
import Text.Printf
 
main = do
  [a, b] <- fmap (read :: String -> Int) . words <$> getLine
  printf "%d %d %.6f\n" (a `div` b) (a `mod` b) (fromIntegral a / fromIntegral b :: Double)
