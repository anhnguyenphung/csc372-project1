-- Haskell supports polymorphism for both data type and functions
-- Polymorphic data types
data List t = Empty | Cons t (List t) -- declaration of polymorphic data types: List of type t
  deriving Show
        
-- Polymorphic functions: One of the most important thing is that the caller gets to
-- pick the types. A polymorphic function should work with all of the input types
-- For example, we have the function to filter the list by applying a function on
-- each of the elements in the list:
filterList _ Empty = Empty
filterList p (Cons x xs)
  | p x        = Cons x (filterList p xs)
  | otherwise  = filterList p xs

-- A filter example function
gtZero :: Integer -> Bool
gtZero x = x > 0

-- An example variable of type "List"
exampleList = Cons (-1) (Cons 2 (Cons (-6) Empty))

main = do
  putStrLn("This is the filterList after processing the list [-1, 2, 6], keeping only value > 0: ")
  print $ filterList gtZero exampleList
