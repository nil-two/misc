import Control.Applicative
import Data.Char

main = do
  inputs <- lines <$> getContents
  mapM_ putStrLn
    $ fmap show
    $ fmap (foldl (+) 0)
    $ fmap (fmap digitToInt)
    $ takeWhile (/="0") inputs
