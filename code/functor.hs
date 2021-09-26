-- Functor is defined in the standard Prelude. The Functor class abstracts
-- over types of kind *->*. An example of Functor class:
class Functor f where
  fmap :: (a -> b) -> f a -> f b

-- Bad example:
-- instance Functor Int where
-- fmap1 = ...
-- Other usage with Functor with type Maybe and Lists:
-- instance Functor Maybe where
-- fmap1 _ Nothing = Nothing
-- fmap1 h (Just a) = Just (h a)
-- or with Lists:
-- instance Functor [] where
-- fmap1_[] = []
-- fmap1 f (x:xs) = f x : fmap f xs
-- Example of using functor with IO:
-- instance Functor IO where
-- fmap1 f ioa = ioa >>= (return .f)
-- or
-- instance Functor IO where
-- fmap1 f ioa = ioa >>= (\a -> return(f a))

main = do
  putStrLn("This is the list [2,4,6,8,10] after being processed (each element minus 1): ")
  print(map (subtract 1) [2,4,6,8,10])
  putStrLn("This is the same list with same process but in different way: ")
  print(Prelude.fmap (subtract 1) [2,4,6,8,10])
  putStrLn("This is the result of 10 plus 5 using Just in Functor: ")
  print(Prelude.fmap (+5)(Just 10))
  putStrLn("Here is the example of functionalists in different data types: ")
  print(Prelude.fmap (+10) Nothing)
