import Control.Applicative

main = do
  nGames <- getLine
  inputs <- lines <$> getContents
  putStrLn
    $ (\(a, b) -> (show a) ++ " " ++ (show b))
    $ foldl (\a b -> (fst a + fst b, snd a + snd b)) (0, 0)
    $ fmap toResult
    $ fmap tuplify2
    $ fmap words
    $ inputs

toResult (a, b)
  | a > b  = (3, 0)
  | a < b  = (0, 3)
  | a == b = (1, 1)

tuplify2 [a, b] = (a, b)
