main = do
    putStrLn "Hello, Everybody!"
    putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))
