import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ reverse
    $ (\(stack, out) -> out)
    $ foldl execOperation ([], [])
    $ fmap words
    $ takeWhile (/="quit")
    $ inputs

type State = ([String], [String])

execOperation state a =
  case a of
  ["push", v] -> (v : stack, out)
  ["pop"]     -> (tail stack, head stack : out)
  _           -> (stack, out)
  where
    (stack, out) = state
