import Text.Printf

main = do
  r <- readLn
  printf "%.6f %.6f\n" (pi * r^2 :: Double) (2*pi*r :: Double)
