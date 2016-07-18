import Control.Applicative
import Text.Printf

main = do
  [x1, y1, x2, y2] <- fmap (read :: String -> Double) . words <$> getLine
  printf "%.6f\n" $ ((x2-x1)**2 + (y2-y1)**2)**0.5
