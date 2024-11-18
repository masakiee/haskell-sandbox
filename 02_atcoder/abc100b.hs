main :: IO()
main = do
    [d, n] <- map read . words <$> getLine
    print $ 100 ^ d * (if n == 100 then n + 1 else n)
