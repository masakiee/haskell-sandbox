main :: IO ()
main = getLine >> readInts  >>= print . solve

solve :: [Int] -> Int
solve = sum . map f

f :: Int -> Int
f n
    | even n = 1 + f (n `div` 2)
    | otherwise = 0

readInts :: IO [Int]
readInts = map read . words <$> getLine
