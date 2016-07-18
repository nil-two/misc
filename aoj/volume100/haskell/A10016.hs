import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap (\(m, f, r) -> toGrade m f r)
    $ fmap tuplify3
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="-1 -1 -1") inputs

toGrade m f r
  | m == -1 || f == -1   = "F"
  | m+f >= 80            = "A"
  | m+f >= 65            = "B"
  | m+f >= 50            = "C"
  | m+f >= 30 && r >= 50 = "C"
  | m+f >= 30            = "D"
  | otherwise            = "F"

tuplify3 [a, b, c] = (a, b, c)
