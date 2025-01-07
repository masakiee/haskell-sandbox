main :: IO ()
main = do
    [n, k] <- map read . words <$> getLine :: IO[Int]
    print $ solve n k

solve :: Int -> Int -> Int
solve n k
    | n == 1 =  k
    | otherwise = k * (k - 1)^(n - 1)
