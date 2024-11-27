main :: IO()
main = do
    [num] <- map read . words <$> getLine :: IO[Int]
    putStrLn $ yesNo $ isEven num

isEven :: Int -> Bool
isEven 0 = True
isEven 1 = False
isEven n = isEven (n - 2)

yesNo :: Bool -> String
yesNo b = if b then "YES" else "NO"
