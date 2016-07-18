import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap (\(h, w) -> toFrame h w)
    $ fmap tuplify2
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="0 0")
    $ inputs

toFrame h w =
  frame
  where
    edge   = repStr w "#" ++ "\n"
    inside = "#" ++ repStr (w-2) "." ++ "#\n"
    frame  = edge ++ repStr (h-2) inside ++ edge

repStr n s =
  concat $ take n $ repeat s

tuplify2 [a, b] = (a, b)
