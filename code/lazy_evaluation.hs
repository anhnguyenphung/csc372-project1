-- Strict Evaluation
-- Under a strict evaluation, fucntion arguments are completely evaluated before passing them
-- to function. Consider the below example:
f a -> b -> c
f x y = x + 2
-- In the above example, in a strict language, to calculate f 2 (3^10000), we need to calculate 5
-- first and then calculate 3^10000 before passing the result to f
-- However, it can be seen that in the above example, it is useless to evaluate 3^10000 since the
-- function f ignores the second argument completely.
-- Haskell is designed to be a lazy functional language, which does not follow strict evaluation.
-- Haskell follows lazy evaluation.



-- Lazy Evaluation
-- Coming back to our example, under lazy evaluation, to compute f 2 (3^!0000), the second argument
-- will be ignored since the second argument will not be used. To be specific, the second argument
-- will be packaged up into a thunk, and because f never uses the second argument, the thunk will be
-- handled by the garbage collector.

 

main = do
  print 3
