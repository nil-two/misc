import Control.Applicative
import Data.Char
import Text.Printf

main = do
  text <- fmap toLower . filter isLetter <$> getContents
  mapM_ (\(c, n) -> printf "%c : %d\n" c n :: IO ())
    $ fmap (\c -> (c, countEq c text)) ['a'..'z']

countEq i a =
  length $ filter (==i) a
