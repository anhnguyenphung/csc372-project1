-- Haskell allows programmers to create their own numeration type
data Thing = Shoe
           | Table
           | Chair
           | Computer
           | Tablet
  deriving Show
-- In the above example, a new type called "Thing" is declared with five data constructor
-- "Shoe", "Table", "Chair", "Computer", "Tablet", and these five constructors are the only
-- values that the type "Things" has.
-- The "deriving Show" syntax tells the Haskell compiler to generate default code for
-- converting "Thing" to String, used when printing out the value of expression of type "Thing".


-- Declare variables of type "Thing" or related to type "Thing"
shoe :: Thing
shoe = Shoe

list :: [Thing]
list = [Shoe, Table, Chair, Computer, Tablet]

-- We can also declare functions on type "Thing"
isElectronic :: Thing -> Bool

isElectronic Shoe = False
isElectronic Table = False
isElectronic Chair = False
isElectronic Computer = True
isElectronic Tablet = True

-- A special case of enumeration type
data Other = People
           | Person Double
  deriving Show
-- In the above example, the "Other" type has two data constructors.
-- The first one, "People" takes no arguments, so "People" by itself is the type "Other".
-- The second one, "Person" takes an argument of type Double, so "Person" itself is not a value
-- of type "Other". We need to give it a Double.

-- Declare variables of type "Other" or related to type "Other"
o1, o2 :: Other
o1 = People
o2 = Person 10.2

o :: [Other]
o = [People, People, Person 9.6]


-- Data constructor can have more than one argument.
data Student = Human String Int Thing
  deriving Show
-- In the above example, the "Student" type has one data contructor "Human", which have three
-- arguments: String, Int, "Thing"

-- Declare variables of type "Student" and function on type "Student"
alex, bob :: Student
alex = Human "Alex" 20 Shoe 
bob = Human "Bob" 21 Chair

findAge :: Student -> Int
findAge (Human _ age _) = age

-- In general, an algebraic data type has one or more data constructors, and each data contructor
-- can have zero or more arguments. Below is the template for algebraic data type:
data Type1 = Other1
  deriving Show
data Type2 = Other2
  deriving Show
data Type3 = Other3
  deriving Show
data AlgebraicDataType = Constrc1 Type1 Type2
                       | Constrc2 Type1
                       | Constrc3 Type1 Type2 Type3
                       | Constrc4
  deriving Show




-- Recursive data types
-- Data types can be recursive. For example, a list is either empty, or asingle element followed by
-- a remaining list.
data IntList = Empty | Cons Int IntList
  deriving Show
-- "Empty" and "Cons" are just constructor names

-- Now we can use recursive function to process recursive data types
intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (Cons x y) = x * intListProd y

-- Another example is a binary tree with an Int value stored at each internal node, and Char stored
-- at each leaf.
data Tree = Leaf Char
          | Node Tree Int Tree
  deriving Show
tree :: Tree
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))


main = do
  -- print out the variables declared earlier outside "main" function
  print shoe
  print list
  
  print o1
  print o2
  print o
  
  print alex
  print bob

  print tree
  
  -- call the functions specified earlier outside the "main" function
  print $ isElectronic shoe
  print $ findAge alex
  print $ intListProd (Cons 3 Empty)
  



