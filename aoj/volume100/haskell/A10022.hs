import Control.Applicative
import Data.Char
 
main = do
  w <- fmap toLower <$> getLine
  a <- words <$> getContents
  putStrLn
    $ show
    $ length
    $ filter (==w)
    $ fmap (fmap toLower)
    $ takeWhile (/="END_OF_TEXT") a
