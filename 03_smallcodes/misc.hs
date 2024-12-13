data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

main = do
  let t1 = Red
  let t2 = Yellow

  print $ Red == Yellow
  print $ Yellow == Red
  print $ Red == Green
