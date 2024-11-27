main :: IO()
main = do
    [n, m] <- map read . words <$> getLine
    print $ "multInts: " ++ show (multInts n m)
    print $ "addInts: " ++ show (addInts n m)
    print $ "subInts: " ++ show (subInts n m)

    -- currying
    let add10 = addInts 10
    print $ "100 + 10 = " ++ show (add10 100)
    print $ "1000 + 10 = " ++ show (add10 1000)


multInts :: Int -> Int -> Int
multInts n = \m -> n * m
-- multBy n m = n * m とも書ける

addInts :: Int -> Int -> Int
addInts n m = n + m

subInts :: Int -> Int -> Int
subInts n = \m -> (-) n m
