import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap show
    $ fmap (\(n, x) -> nWays n x)
    $ fmap tuplify2
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="0 0") inputs

nWays n x = 
  length [(a, b, c) | a <- [1..n], b <- [a+1..n], c <- [b+1..n], a+b+c == x]

tuplify2 [a, b] = (a, b)
