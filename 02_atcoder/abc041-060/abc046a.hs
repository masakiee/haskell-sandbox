import Data.List (nub)

main :: IO ()
main = do
  [a, b, c] <- map read . words <$> getLine :: IO [Int]
  print . length . nub $ [a, b, c]
