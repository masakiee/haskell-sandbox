import Data.List (sort)

main :: IO()
main = do
  [a, b, c] <- map read . words <$> getLine :: IO[Int]
  let sorted = sort [a, b, c]
  let min = head sorted
  let max = last sorted
  let mid = sorted !! 1
  putStrLn $ yesNo $ (max - min) == mid
  
yesNo :: Bool -> String
yesNo b = if b then "Yes" else "No"
