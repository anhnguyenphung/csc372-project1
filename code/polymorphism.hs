-- Haskell supports polymorphism for both data type and functions
-- Polymorphic data types
data List t = E | C t (List t)        -- declaration of polymorphic data types

-- Polymorphic functions: One of the most important thing is that the caller gets to
-- pick the types. A polymorphic function should work with all of the input types
-- For example, we have the function below:
filterList _ E = E
filterList p (C x xs)
  | p x        = C x (filterList p xs)
  | otherwise  = filterList p xs

main = do
  putStrLn("This is the filterList after being processed: ")
  print(filterList[1,2,3,4,5])
