import Control.Applicative
import Data.List

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap unwords
    $ fmap (fmap show)
    $ fmap sort
    $ fmap (fmap (read :: String -> Int) . words)
    $ takeWhile (/="0 0") inputs
