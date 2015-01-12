import Data.List
--import Criterion.Main
--import Math.NumberTheory.Powers

{-

findNums :: Int -> Int -> Int
findNums a b = length [xs | xs <- (drop 1 .) subsequences [pow x b | x <- [1..c]], foldr (+) (head xs) (tail xs) == a] where c = root a b 0 

root :: Int -> Int -> Int -> Int
root n a i
    | pow i a <= n && pow (i+1) a > n = i
    | otherwise = root n a (i+1)

pow :: Int -> Int -> Int
pow _ 0 = 1
pow n a = n * pow n (a - 1)

sum' :: Num a => [a] -> a
sum' = foldl' (+) 0

findSum :: Int -> [Int] -> [Int]
findSum n as
	| n < 0 = []
	| as == [] = []
	| c /= [] = c
	| otherwise = (head as) : findSum (n - head as) (tail as) 
	where c = [a | a <- as, a == n]

-}

findNums :: Int -> Int -> Int
findNums a b = findNums' a b 1 0

findNums' :: Int -> Int -> Int -> Int -> Int
findNums' a b c s
	| s + c ^ b > a = 0
	| s + c ^ b == a = 1
	| otherwise = findNums' a b (c + 1) (s + c ^ b) + findNums' a b (c + 1) s

main = getLine >>= \x -> getLine >>= \y -> putStrLn $ show (findNums ((read :: String -> Int) x) ((read :: String -> Int) y))