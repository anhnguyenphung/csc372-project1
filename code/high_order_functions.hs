-- Anonymous Function

-- Anonymous function is also known as lambda function
-- For example, supposed that we want to write a function that receive a list of integer as inputs
-- and return a new list containing elements that are less than 96 from the old list.
lessThan96 :: [Int] -> [Int]

-- A normal approach is that we write a function receives an integer as an input and return True
-- if that integer is less than 96, False otherwise. Then we apply this function on each element
-- in the list to filter the value.
lt96 :: Int -> Bool
lt96 x = x < 96

lessThan96 list = filter lt96 list
-- Here we use the "filter" function to do the work for us.


-- It can be seen that it is time consuming to define the function "lt96", since we only use "lt196"
-- in the function "lessThan96" and never use "lt96" again.
-- To save time and space, we use lambda function here:
lessThan96_2 :: [Int] -> [Int]
lessThan96_2 list = filter (\x -> x < 96) list
-- When we define the function "lessThan96_2", we use the lambda function "\x -> x < 96". This
-- function takes a single argument x and outputs whether x is less than 96 or not. 

-- Lambda functions can have multiple arguments. Examples are inside the main function.

-- Moreover, in the case of the function "lessThan100", we can even write it in a better way without
-- the use of lambda function.
lessThan96_3 :: [Int] -> [Int]
lessThan96_3 list = filter (<96) list
-- In the function "lessThan96_3", "<96" is an operator section. If "?" is an operator, then ?y is as
-- same as the lambda function \x -> x ? y, and y? is as same as the lambda function \x -> y ? x. Using
-- an operator section allows us to partially apply an operator to one of its two arguments.
-- Examples of functions using operator section are inside the main function.   

 

-- Function Composition
-- In some cases, instead of using lambda functions and functions using operator section, we want to use
-- several already defined functions to create a new function.
-- For example, suppose that given a list of integer as an input, we want to check if the length of the
-- list containing all of the element that less than 96 from the old list is odd or even.
-- Utilizing the utility function "even" and "length" in Haskell as well as the function "lessThan96" that
-- is defined above, we have that
checkEven :: [Int] -> Bool
checkEven list = even(length(lessThan96 list))
-- We can rewrite the above function as
checkEven_2 :: [Int] -> Bool
checkEven_2 = even . length . lessThan96
-- As we can see, the second version is better in term of readability. The function "checkEven_2" can be
-- viewed as a pipeline composed of three smaller functions that are evaluated from right to left.


-- Currying and Partial Application
-- Conisder these 2 below functions
f :: Int -> Int -> Int
f a b = a - b
f_1 :: Int -> (Int -> Int)
f_1 a b = a - b
-- The first function can be viewed as a function taking two inputs a and b and output a - b, but
-- in fact, the first function takes one argument (Int) and outputs another function (Int -> Int),
-- which takes one argument (Int) and outputs an Int (the final answer). So the second function is
-- equivalent to the first function. In other words, the two functions are the same.

-- NOTE: All functions in Haskel take only one arugment, and -> is right associative  

-- If we want to represent a function that takes two arguments, we can use a tuple containing two
-- elements as a single argument:
f_2 :: (Int, Int) -> Int
f_2 (x, y) = x - y

-- Moreover, we can specify the typeclass instead of type for the argument if we want. For example,
-- we can rewrite the function f as below:
f_3 :: (Num a) => a -> a -> a
f_3 x y = x - y

-- Functions can take functions as parameter and also return a function. For example, we will make a  
-- function that takes a function and applies it twice to something:
applyTwice_f :: (x -> x) -> x -> x
applyTwice_f f a = f (f a)
-- Notice here that since we define the function using the same "x", the input and output of
-- "applyTwice_f" should have the same type


-- High order functions can be defined and written in a recursive manner. For example, suppose that
-- we want to rewrite the function "zipWith" in the Haskell standard library. This function takes 2 
-- lists as parameters and then join two lists by applying the function between corresponding elements
zipWith_f :: (x -> y -> z) -> [x] -> [y] -> [z]
zipWith_f _ [] _ = []
zipWith_f _ _ [] = []
zipWith_f f (a:as) (b:bs) = f a b : zipWith_f f as bs
-- The above function can be understood as a function with three arguments. 
-- The first argument is the applying function, and the second and third argument is the two lists.
-- Notice that since we specify two last arguments and the output using three different letters
-- "x", "y", "z", those three do not have to be the same type.
-- After the function definition, the first two lines are just bases cases. If one of two lists are
-- empty list, we just return an empty list.
-- The third line is the recursive case. We use the applying function on the first elements of both
-- lists and then call the functon of the remaining of two lists.

-- Examples of this function will be inside the "main" function



-- Maps and Filters
-- "map" takes a function and a list and applies that function to every element in the list, producing
-- a new list:
map1 :: (a -> b) -> [a] -> [b] 
map1 _ [] = []
map1 f (x:xs) = f x : map1 f xs
-- We can see that "map" function is written in a recursive manner.
-- Example of "map" function is inside "main" function

-- "filter" takes a predicate (a predicate is a function that tells whether something is true or not, 
-- or a function that returns true or false) and a list and then returns the list of elements that
-- satisfies the predicate:
filter1 :: (a -> Bool) -> [a] -> [a]
filter1 _ [] = []
filter1 p (x:xs)
  | p x = x : filter1 p xs
  | otherwise = filter1 p xs
-- We can see that "filter" function is also written in a recursive manner.
-- In the recursive case of "filter" function, if "p x" is True, then x is added to the output list, 
-- otherwise x is not included in the output list.
-- Example of "filter" function is inside "main" function
 



-- We can convert between two representation of two-argument funnctons (from f x y to f (x, y) and
-- vice versa):
convert_1 :: ((x, y) -> z) -> x -> y -> z
convert_1 f a b = f (a, b)

convert_2 :: (x -> y -> z) -> (x, y) -> z
convert_2 f (a, b) = f a b

-- The above conversions are useful in a case when you want to apply a function to a pair. The
-- example is inside the "main" function.



-- We know that functions can also be declared inside "main" function using the "let" keyword.
-- Details and examples of declaring high order functions using "let" keyword will be inside the "main"
-- function.

main = do

  -- These 3 functions below should have the same output given the same input
  print $ lessThan96 [1, 2, 101, 75, 300]
  print $ lessThan96_2 [1, 2, 101, 75, 300]   
  print $ lessThan96_3 [1, 2, 101, 75, 300]

  -- Examples of lambda functions
  print $ (\x y z -> x + 2*y + 3*z) 1 2 3
  print $ (\x y -> x > y) 5 4

  -- Examples of functions using operator section
  print $ (>96) 300 -- output True
  print $ (<96) 300 -- output False

  -- These 2 functions should have the same input given the same output
  print $ checkEven [1, 2, 101, 75, 300]
  print $ checkEven_2 [1, 2, 101, 75, 300]

  -- These 4 functions should have the same input given the same output
  print $ f 10 7
  print $ f_1 10 7 
  print $ f_2 (10, 7)
  print $ f_3 10 7

  -- Example of "applyTwice_f" function
  print $ applyTwice_f (+ 3) 19
  print $ applyTwice_f ("HEHE " ++) "HOHO" -- ++ is used to concatenate string
  print $ applyTwice_f (++ " HEHE") "HOHO"
  
  -- Example of "zipWtih_f" function
  print $ zipWith_f (-) [10, 7, 6, 24, 67] [4, 6, 7, 8, 9]
  print $ zipWith_f min [10, 7, 6, 24, 67] [4, 6, 7, 8, 9] 
  print $ zipWith_f (zipWith_f (+)) [[1, 2], [3, 4]] [[5, 6], [7, 8]]

  -- Example of "map" function
  print $ map (+5) [1, 2, 3, 4, 5]
  print $ map (++ "HEHE") ["HAHA", "HOHO", "HUHU"]
  print $ map (map (*2)) [[1, 2, 3], [5, 6, 7, 8, 9], [10, 4]]

  -- Example of "filter" function
  print $ filter (>5) [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print $ filter odd [1..10] -- the input list is created using list comprehension, containing integers from 1 to 10 inclusive
  

  -- Example of the conversion
  print $ convert_2 (-) (7, 10) -- apply substraction on the pair
  
  
  -- You can declare a function insde "main" function using "let" by partially applying a pre-defined
  -- function outside "main" function
  let new_f = f 10
  print $ new_f 7 -- This should output the same result as f 10 7
  



