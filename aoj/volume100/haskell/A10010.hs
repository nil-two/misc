import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap show
    $ fmap (\(a, op, b) -> calculate (read a) op (read b))
    $ takeWhile (\(_, op, _) -> op /= "?")
    $ fmap tuplify3
    $ fmap words
    $ inputs

calculate a op b =
  case op of
  "+"       -> a + b
  "-"       -> a - b
  "*"       -> a * b
  "/"       -> a `div` b
  otherwise -> 0

tuplify3 [a, b, c] = (a, b, c)
