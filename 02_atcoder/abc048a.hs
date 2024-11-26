main :: IO ()
main = do
    [a, s, c] <- words <$> getLine
    putStrLn ['A', head s, 'C']
