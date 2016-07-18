import Control.Applicative

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ reverse
    $ (\(status, card, m, out) -> out)
    $ foldl shuffle (WaitCard, "", -1, [])
    $ inputs

data Status = WaitCard | WaitM | WaitH

type State = (Status, String, Int, [String])

shuffle state s =
  case status of
  WaitCard -> (WaitM, s, m, out)
  WaitM    -> (WaitH, card, (read s), out)
  WaitH    -> if m == 1 then (WaitCard, card, m, (shuffleOne (read s) card):out)
                        else (WaitH, (shuffleOne (read s) card), (m-1), out)
  where
    (status, card, m, out) = state

shuffleOne h card =
  drop h card ++ take h card
