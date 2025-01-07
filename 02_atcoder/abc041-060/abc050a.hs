main :: IO ()
main = do
  [a, o, b] <- words <$> getLine
  print $ read a + (if o == "+" then 1 else -1) * read b
