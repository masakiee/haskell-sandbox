main :: IO ()
main = do
    line <- getLine
    let  (a:b:_) = (map read . words) line
    putStrLn $ if a <= 8 && b <= 8 then "Yay!" else ":("
