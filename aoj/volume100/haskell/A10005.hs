main = do
  putStr $ repStr 1000 "Hello World\n"

repStr n s =
  concat $ take n $ repeat s
