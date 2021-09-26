-- Recursion is extremely important in Haskell. It allows the programmer to solve many problems.
-- For example: Suppose that we have an empty list contains integer, recursion will
-- allow us to do the operations with the elements inside, find their max, min, etc..
-- For instance, we have the below function to find the maximum elements of
-- a list

maximum :: [Int] -> Int
maximum [x] = x
maximum (x:xs) | (Prelude.maximum xs) > x = Prelude.maximum xs
               | otherwise        = x

-- Map is also important in Haskell. Map allows the users to perform some operations
-- on every elements of the list. For example, we have the initial list as: [1,2,3,4,5,6]
-- and we want to add 10 to each elements inside the list. Here is the way to
-- do that with Map in Haskell

initial = [1,2,3,4,5,6]

-- In Haskell, Filter allows the users to keep some elements of the lists with common features and
-- get rid of other elements. For example, we want to only keep the odd number from the list
-- [1,2,3,4,5]
-- the result is [1,3,5]

-- The Prelude is a module with many standard definition that gets implicitly imported into
-- every Haskell program. Polymorphic lists are defined in the Prelude and many useful
-- polymorphic functions for working with them.
-- There is another useful polymorphic type is Maybe. A value of this type may contain
-- a value of a type a (in the Just constructor) or Nothing (represent for failure or error).
data Maybe a = Nothing | Just a           -- Defining the type Maybe

main = do
  putStrLn "The maximum of the list is [3,2,100,1000,0,-1]: "
  print(Prelude.maximum [3,2,100,1000,0,-1])

  putStrLn("The maximum of the list [1,2,3,4,5,6]: ")
  print(Prelude.maximum [1,2,3,4,5,6])
  -- Above is the code for recursion

  let after = map (+10) initial
  putStrLn "The new list after addition is:"
  print $ after
  -- Above is the code for Map

  putStrLn("The below list is the filter list of [1,2,3,4,5]: ")
  print $ (filter odd [1,2,3,4,5])
  -- Above code is example for Filter
