-- Functor is defined in the standard Prelude. The Functor class abstracts
-- over types of kind *->*. An example of Functor class:
class Functor f where
  fmap :: (a -> b) -> f a -> f b
-- Bad example:
instance Functor Int where
  fmap = ...
-- Other usage with Functor with type Maybe and Lists:
instance Functor Maybe where
  fmap _ Nothing = Nothing
  fmap h (Just a) = Just (h a)
-- or with Lists:
instance Functor [] where
  fmap_[] = []
  fmap f (x:xs) = f x : fmap f xs
-- Example of using functor with IO:
instance Functor IO where
  fmap f ioa = ioa >>= (return .f)
-- or
instance Functor IO where
  fmap f ioa = ioa >>= (\a -> return(f a))
  
