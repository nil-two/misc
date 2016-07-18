import Control.Applicative
import Text.Printf

main = do
  [a, b, deg] <- fmap (read :: String -> Double) . words <$> getLine
  (\(area, perimeter, h) -> printf "%.6f %.6f %.6f" area perimeter h :: IO ())
    $ solve a b deg

solve a b deg =
  (area, perimeter, h)
  where
    rad       = deg * pi / 180
    c         = sqrt (a**2.0 + b**2.0 - 2.0*a*b*(cos rad))
    area      = a*b*(sin rad) / 2
    perimeter = a + b + c
    h         = 2*area / a
