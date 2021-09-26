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

-- Pair, can be understood as a tuple holding multiple variables
p :: (Int, Char, Bool)
p = (32, 'r', True)

-- List, which is an array of elements that have same types
l1 :: [Int]
l2 :: [Char] -- a list of character is basically a string
l1 = [1, 2, 3, 4, 5]
l2 = ['a', 'b', 'c', 'd', 'e']

-- The second way to decalre the variable inside "main" function using the "let" keyword. Once the
-- variable is declared, it can be assigned to another value. Examples are inside the main function.


-- "main" function, which executes the program
main = do

  -- print out the values declared earlier outside "main" function
  putStrLn("This is the output when we print integer 100: ")
  print x
  putStrLn("This is the output when we print Maximum value: ")
  print maxInt
  putStrLn("This is the output when we print Minimum value: ")
  print minInt
  putStrLn("This is the output when we print an integer: ")
  print y
  putStrLn("This is the output when we print Double: ")
  print d1
  print d2
  putStrLn("This is the output when we print Booleans: ")
  print b1
  print b2
  putStrLn("This is the output when we print Characters: ")
  print c1
  print c2
  print c3
  putStrLn("This is the output when we print Strings: ")
  print s
  putStrLn("This is the output when we print pairs: ")
  print p
  putStrLn("This is the output when we print lists: ")
  print l1
  print l2

  let k = 3 -- declare the variable k to be 3
  print "Initial value of k is:"
  print k
  let k = 4 -- assign a new value 4 to the variable k
  print "Value of k after re-assigning the value is:"
  print k
  -- we don't need to specify the type to declare the variable inside "main" function
  let j = [1, 2, 3, 4, 5]
  print j
