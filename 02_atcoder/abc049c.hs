f :: [Char] -> Bool
f "" = True
f ('m':'a':'e':'r':'d':s) = f s
f ('r':'e':'m':'a':'e':'r':'d':s) = f s
f ('e':'s':'a':'r':'e':s) = f s
f ('r':'e':'s':'a':'r':'e':s) = f s
f _ = False

main :: IO ()
main = do
    s <- reverse <$> getLine
    if f s
        then putStrLn "YES"
        else putStrLn "NO"
