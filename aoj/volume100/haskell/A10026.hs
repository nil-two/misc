import Control.Applicative
import Text.Printf

main = do
  inputs <- lines <$> getContents
  mapM_ (printf "%.6f\n")
    $ reverse
    $ (\(status, out) -> out)
    $ foldl toStandardDeviation (WaitN, [])
    $ fmap (fmap (read :: String -> Double) . words)
    $ inputs

data Status = WaitN | WaitScores

type State = (Status, [String])

toStandardDeviation state a =
  case status of
  WaitN      -> (WaitScores, out)
  WaitScores -> (WaitN, (standardDeviation a) : out)
  where
    (status, out) = state

standardDeviation a =
  standardDeviation
  where
    average           = (foldl (+) 0 a) / (fromIntegral (length a))
    variance          = (foldl (\a b -> a + (b - average)**2) 0 a) / (fromIntegral (length a))
    standardDeviation = sqrt variance
