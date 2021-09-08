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
main = do
  putStrLn "The result of the subtraction is: "
  print(expa 10 1)                          -- calling function with input x and y
