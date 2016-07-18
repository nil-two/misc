import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap (\(h, w) -> toRect h w)
    $ fmap tuplify2
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="0 0")
    $ inputs

toRect h w =
  rect
  where
    line = repStr w "#" ++ "\n"
    rect = repStr h line

repStr n s =
  concat $ take n $ repeat s

tuplify2 [a, b] = (a, b)
