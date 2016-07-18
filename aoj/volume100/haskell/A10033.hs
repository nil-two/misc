import Control.Applicative

main = do
  nStacks <- readLn
  inputs  <- lines <$> getContents
  mapM_ putStrLn
    $ reverse
    $ (\(stacks, out) -> out)
    $ foldl execOperation ((take nStacks $ repeat [], []) :: State)
    $ fmap words
    $ takeWhile (/="quit")
    $ inputs

type State = ([[String]], [String])

execOperation state a =
  case a of
  ["push", i, v] -> push state i v
  ["pop", i]     -> pop state i
  ["move", i, j] -> move state i j
  _              -> nop state
  where
    (stacks, out) = state

    push state i v =
      (update stacks dst (v : stacks!!dst), out)
      where
        dst = (read i) - 1

    pop state i =
      (update stacks src (tail $ stacks!!src), (head $ stacks!!src) : out)
      where
        src = (read i) - 1

    move state i j =
      (update (update stacks src (tail $ stacks!!src)) dst ((head $ stacks!!src) : stacks!!dst), out)
      where
        src = (read i) - 1
        dst = (read j) - 1

    nop state =
      state

update a i v =
  take i a ++ [v] ++ drop (i+1) a
