import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap (\(h, w) -> toChessboard h w)
    $ fmap tuplify2
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="0 0")
    $ inputs

toChessboard h w =
  concat
    $ fmap (\a -> concat a ++ "\n")
    $ fmap (fmap (\(x, y) -> if (x+y) `mod` 2 == 0 then "#" else "."))
    $ fmap (\y -> zip [1..w] (repeat y))
    $ [1..h]
  
tuplify2 [a, b] = (a, b)
