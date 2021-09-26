-- Haskell allows the users to pairs things together
-- Example of a pair:
p :: (Char, Char)                       -- pair declaration
p = ('t', 'n')
-- In the example above, the (x,y) notion is used both for the type of pair
-- and a pair value.
-- The elements of a pair can be extracted with pattern matching. For example:
addPair ::  (Int, Int) -> (Int)
addPair (x,y) = x + y

-- Lists are one of the most basic data type in haskell
number :: [Integer]                     -- declaration of Lists
number = [1, 2, 3, 4, 5]

-- Haskell also has list comprehension as python.
-- String could also be considered as a lists of characters so that
-- string is just an abbreviation for [Char].
-- For example:
list_1 :: [Char]
list_1 = ['w', 'o', 'l', 'r', 'd']

list_2 :: String
list_2 = "world"
-- We have that list_1 == list_2 and they are the same.

-- Most of the lists are constructed from the empty list using the cons operator,
-- (:). Cons takes an element and a list, and produces a new list with the element
-- prepended to the front.
-- To create empty list, we have:
emptyList = []

-- To create a list with some elements already, we have:
expList = [1,2,3,4]
-- Another way to create expList is:
expList1 = 1 : 2 : 3 : 4 : []
-- All the lists are singly linked lists, not array

-- Functions on lists: functions can be used on lists pattern matching
-- For example, we have the function below to calculate the sum of elements within
-- a list. Suppose we have list_a = [1,2,3,4]:
sum_a :: [Int] -> Int
sum_a [] = 0
sum_a (x:xs) = x + sum_a xs
