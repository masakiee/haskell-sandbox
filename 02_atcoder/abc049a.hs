main :: IO ()
main = do
    c <- getLine
    putStrLn $ if vowel (head c) then "vowel" else "consonant"

vowel :: Char -> Bool
vowel c = c == 'a' || c == 'i' || c == 'u' || c == 'e' || c == 'o'

-- より綺麗に見える実装方法
-- main = do
--     c <- getChar
--     putStrLn $ if c `elem` "aeiuo" then "vowel" else "consonant"
