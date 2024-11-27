import Data.List (mapAccumL, unfoldr)

main :: IO()
main = do
  [_, x] <- getInts
  aa <- getInts

  print $ sum $ solve x aa

solve :: Int -> [Int] -> [Int]
solve x = snd . mapAccumL f 0
    where
        f :: Int -> Int -> (Int, Int)
        f prev a
            | prev + a <= x = (a, 0)
            | otherwise = (a - z, z)
            where
                z = prev + a - x

getInts :: IO[Int]
getInts = map read . words <$> getLine
