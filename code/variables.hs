-- There are two ways to declare variables in Haskell. 

-- The first way is to declare the variable outside "main" function. Once the variable is
-- declared, it can not be changed (immutable). It can be understood that the variable
-- is declared as a constant. The value of the variable can be used later inside "main"  

-- Below are some basic types in Haskell.

-- Machine-sized integer. Maximum value and minimum value of this type can be determined as below
x :: Int
x = 100
maxInt, minInt :: Int
maxInt = maxBound 
minInt = minBound

-- Arbitrary-precision integer, limited by the amount of memory on the machine
y :: Integer
y = 3252089723843

-- Double-precision floating points
d1, d2 :: Double
d1 = 3.5472
d2 = 2.34e-6

-- Booleans
b1, b2 :: Bool
b1 = True
b2 = False

-- Characters
c1, c2, c3 :: Char
c1 = 'a'
c2 = '?'
c3 = '1'

-- String
s :: String
s = "Hello World!"

-- Pair, can be understood as a tuple holding mu;=ltiple variables
p :: (Int, Char, Bool)
p = (32, 'r', True)

-- List, which is an array of elements that have same types
l1 :: [Int]
l2 :: [Char] -- a list of character is basically a string
l1 = [1, 2, 3, 4, 5]
l2 = ['a', 'b', 'c', 'd', 'e']

-- "main" function, which executes the program
main = do
 
  -- print out the values declared earlier outside "main" function
  print x
  print maxInt
  print minInt
  print y
  print d1
  print d2
  print b1
  print b2
  print c1
  print c2
  print c3
  print s
  print p
  print l1
  print l2
