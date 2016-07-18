import Control.Applicative
import Text.Printf

main = do
  [a, b] <- fmap (read :: String -> Int) . words <$> getLine
  printf "%d %d\n" (a*b) (2*a + 2*b)
