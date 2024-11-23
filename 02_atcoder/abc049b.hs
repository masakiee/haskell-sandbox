import Control.Monad (mapM_, replicateM)

main :: IO ()
main = do
  [h, _] <- map (read @Int) . words <$> getLine
  css <- replicateM h getLine

  let doubled = concatMap (\cs -> [cs, cs]) css

  mapM_ putStrLn doubled
