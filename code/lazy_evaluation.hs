-- Strict Evaluation
-- Under a strict evaluation, fucntion arguments are completely evaluated before passing them
-- to function. Consider the below example:
f :: (Num a) => a -> a -> a
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


-- Pattern matching drives evaluation. Consider two below functions in Haskell
data Other = People
           | Person Double
  deriving Show

f1 :: Other -> [Other]
f1 m = [m,m]

f2 :: Other -> [Other]
f2 People  = []
f2 (Person x) = [Person x]
-- f1 and f2 both use their argument. But there is still a big difference between them. Although f1
-- uses its argument a, it does not need to know anything about it. a can remain completely unevaluated,
-- and the unevaluated expression is simply put in a list. Put another way, the result of f1 y does not
-- depend on the type of t.

-- f2, on the other hand, needs to know something about its argument in order to proceed: was it
-- constructed with People or Person? That is, in order to evaluate f2 y, we must first evaluate y,
-- because the result of f2 depends on the shape of y.

main = do
  putStrLn("This is the result of functions Num a: ")
  print $ f 2 3 -- print out the result of the first example
