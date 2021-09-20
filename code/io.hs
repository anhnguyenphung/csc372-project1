-- Input and Output

-- I/O is quite specical in Haskell. Haskell is a lazy and pure functional language, so in Haskell,
-- functions may not have any external effects and may not depend on external input. Normally,
-- we want to include all inputs in the files and then run the files to get the result, but in some
-- cases, we want to deal with inputs and outputs.

-- We begin with a common function is Haskell library "putStrLn", which is used to print out the
-- string to the terminal:
-- putStrLn :: String -> IO ()
-- The above function receives an argument as a String and returns an I/O computation that will
-- (when executeed) print out that String on the terminal.
-- To run this function, we just pass this function to "main" function:
--
-- main = putStrLn_1 "Hello World!"
--
-- The String "Hello World!" will be printed out to the terminal we run the file.


-- Reading Input: Details will be inside the "main" function
import Data.Char
-- Reading Files: Details will be inside the "main" function
import System.IO

-- This function continuously reads a line and prints out the same line with all of the characters in
-- the line being capital. The function will stop when we input a blank line.
reverse_word = do
  putStrLn "Please give an input (To end giving the input, please input a blank line)"
  line <- getLine
  if null line
    then return ()
    else do
      let upperCase = map toUpper line
      putStrLn $ "The input in upper case is " ++ upperCase
      reverse_word


main = do

  -- Example of reading input
  putStrLn "Hello! What is your name?"
  name <- getLine
  putStrLn ("My name is " ++ name ++ "\n")
  -- In the above example, the input string is passed to the "name" variable. We use "getLine" function
  -- to get the input.
  
  -- Another example of reading input
  putStrLn "What is your favorite movie?"
  movie <- getLine
  putStrLn $ "My favorite movie is " ++ movie ++ "\n"

  -- We can read input multiple times using recursion. For example, we have already defined the function
  -- "reverse_word" using recursion outsitde the function. Now we will cal this function:
  reverse_word


  -- An interesting thing is that using return doesn't cause the I/O do block to end in execution. The
  -- program just continues running till the end.
  putStrLn "--- Begin of the block ---"
  return ()
  return "This is a magical world!"
  line <- getLine
  return 100
  return "I want to end now !!!"
  putStrLn $ "We can still print the input line, which is: " ++ line
  putStrLn "--- End of the block --\n"

  -- "return" can be used to bind the values to the variables
  x <- return "Hello"
  y <- return "World!"
  putStrLn $ x ++ " " ++ y ++ "\n"

  
  -- Some other functions in Haskell that deal with I/O:

  -- putStr: Pretty much like putStrLn, takes a string as a parameter and returns an I/O action that will
  -- print out the string to the terminal. Do not jump to new line.
  putStr "League "
  putStr "of "
  putStrLn "Legends"

  -- putChar: Takes a character and returns an I/O action that will print it out to the terminal.
  putChar 'x'

  -- print: Takes a value of any type and returns an I/O action that will print it out.
  print [1, 2, 3, 4, 5]
  print "Hello World!"
  print 10
  print 9.6
  print True

  -- getChar: Reads a chracter from the input
  putStrLn "Enter a single character: "
  c <- getChar
  putStr $ "The character you entered is: "
  putChar c 
  putStrLn ""

  -- Read a stream of inputs in Haskell
  -- To read a stream of inputs in Haskell, we use the "getContents" function. "getContents" is an I/O action that
  -- reads everything from the standard input until it encounters EOF character
  putStr"Enter any string. The program will print out that string, " 
  putStrLn "and the process repeats until you hit EOF (Ctrl-D)"
  contents <- getContents
  putStrLn (contents) 

  -- Read a file in Haskell
  -- For example, we want to read a file called "example_io.txt" and print out the contents of that file
  putStrLn "Below is the content of the file \"example_io.txt\""
  actionFile <- openFile "example_io.txt" ReadMode -- open the file in read mode
  contentFile <- hGetContents actionFile -- store the file content in a variable
  putStrLn $ "--- Begin of file ---\n" ++ contentFile ++ "--- End of file ---\n" -- print out the content of the file
  hClose actionFile -- close the file 

  -- We can also use "readFile" to read the contents of the file.
  putStrLn "Below is the content of the same file but read in a different way: "
  contentFileZ <- readFile "example_io.txt"
  putStrLn $ "--- Begin of file ---\n" ++ contentFileZ ++ "--- End of file ---\n"

  -- Write a file in Haskell
  -- For example, we want to write the content of the above file into a new file called "new_example_io.txt"
  writeFile "new_example_io.txt" contentFile
  -- Now to check if the new file has the content of the old file, we print out the content of the new file
  putStrLn "Below is the content of the file \"new_example_io.txt\""
  contentNewFile <- readFile "new_example_io.txt"
  putStrLn $ "--- Begin of file ---\n" ++ contentNewFile ++ "--- End of file ---\n"

  -- Append a file in Haskell
  -- Now we want to append a new string from the input to the file "new_example_io.txt"
  putStrLn "Append a string \"Coding is wonderful\" to append to the file \"new_example_io.txt\""
  aNewLine <- return "Coding is wonderful"
  --putStr "hehe"
  appendFile "new_example_io.txt" (aNewLine ++ "\n")
  -- Now we print out the content of the file to check if the file is updated 
  putStrLn "Below is the content of the updated file \"new_example_io.txt\""
  contentNewFileZ <- readFile "new_example_io.txt"
  putStrLn $ "--- Begin of file ---\n" ++ contentNewFileZ ++ "--- End of file ---\n"
 

