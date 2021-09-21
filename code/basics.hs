main = do

  -- Basic Operations      
  print $ 3 + 2 -- = 5, Addition
  print $ 24 - 36 -- = -12, Subtraction
  print $ 35 * 6 -- = 210, Multiplication
  print $ 8 / 5 -- = 1.6, Division
  print $ 17 `mod` 3 -- = 2, Integer Modulo 
  print $ 2 ^ 5 -- = 32, Power
  print $ 17 `div` 5 -- = 3, Integer Division
  
  -- Boolean Logic
  -- && (and), || (or), not (not)
  print $ True && True -- True and True
  print $ not (False || True) -- not (True or False)
  -- == (equal), /= (not equal), > (greater than), < (less than), >= (greater than or equal), <= (less than or equal)
  print $ 'b' == 'b' -- True
  print $ 12 /= 3 -- True
  print $ (6 > 7) && ("a" > "c") -- False
  print $ "iOS" >= "Android" -- True

  
   

