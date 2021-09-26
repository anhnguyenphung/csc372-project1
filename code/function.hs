-- Defining a basic function in Haskell
-- Typical syntax for the type of a function:
-- (name of the function) ::  Type of input -> Type of output
-- For example: concatenation :: String -> String means that function's name is concatenation
-- which receives String as input and return yields another String as output.
-- Example of function declaration
exp1 :: Int -> Int
exp1 x = x * 2

-- A function in haskell can receives multiple of arguments and to apply
-- a function to some arguments, just list the arguments after function
-- separated by spaces. For example:
expa :: Int -> Int -> Int                -- function declaration
expa x y = x - y                         -- function definition

expb :: Int -> Int -> Int
expb x y = x * y

expc :: String -> String -> String
expc x y = x ++ y
main = do
  putStrLn "The result of the subtraction between 10 and 1 is: "
  print(expa 10 1)                          -- calling function with input x and y
  putStrLn "The result of the multiplication between 2 and 10 is: "
  print(expb 2  10)
  putStrLn("The result of the concatenation between project1 and CSc372 is: ")
  print(expc "project1" "CSc372")
