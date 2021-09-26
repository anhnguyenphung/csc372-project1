main = do

  -- Basic Operations
  putStrLn("This is the result of operation 3 + 2: ")
  print $ 3 + 2 -- = 5, Addition
  putStrLn("This is the result of operation 24 - 36: ")
  print $ 24 - 36 -- = -12, Subtraction
  putStrLn("This is the result of operation 35 * 6: ")
  print $ 35 * 6 -- = 210, Multiplication
  putStrLn("This is the result of operation 8 / 5: ")
  print $ 8 / 5 -- = 1.6, Division
  putStrLn("This is the result of operation 17 % 3: ")
  print $ 17 `mod` 3 -- = 2, Integer Modulo
  putStrLn("This is the result of operation 2 ^ 5: ")
  print $ 2 ^ 5 -- = 32, Power
  putStrLn("This is the result of operation 17 // 5: ")
  print $ 17 `div` 5 -- = 3, Integer Division

  -- Boolean Logic
  -- && (and), || (or), not (not)
  putStrLn("This is the value when we have True and True: ")
  print $ True && True -- True and True
  putStrLn("This is the value when we have True or True: ")
  print $ not (False || True) -- not (True or False)
  -- == (equal), /= (not equal), > (greater than), < (less than), >= (greater than or equal), <= (less than or equal)
  putStrLn("Compare b and b: ")
  print $ 'b' == 'b' -- True
  putStrLn("Check if 3 is divided by 12 or not: ")
  print $ 12 /= 3 -- True
  putStrLn("Check if 6 > 7 and a > c: ")
  print $ (6 > 7) && ("a" > "c") -- False
  putStrLn("Check if ios >= Android: ")
  print $ "iOS" >= "Android" -- True
