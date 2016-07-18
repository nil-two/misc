import Control.Applicative
import Text.Printf

main = do
  inputs <- fmap (read :: String -> Int) . lines <$> getContents
  mapM_ (\(i, x) -> printf "Case %d: %d\n" i x :: IO ())
    $ zip ([1..] :: [Int])
    $ takeWhile (/=0) inputs
