import Control.Applicative
import Data.List

main = do
  nCards     <- getLine
  existCards <- lines <$> getContents
  mapM_ putStrLn
    $ allCards \\ existCards

allCards =
  cards
  where
    suits = ["S", "H", "C", "D"]
    ranks = [1..13]
    cards = [toCard suit rank | suit <- suits, rank <- ranks]

toCard suit rank =
  suit ++ " " ++ show rank
