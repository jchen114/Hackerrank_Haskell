import Data.List

isSequence :: [[Char]] -> [Bool]
isSequence ass = map (f [0,0,0,0]) (drop 1 ass)

f :: [Int] -> [Char] -> Bool
f (r:g:y:b:[]) xs -- Check prefix
 | abs (r-g) > 1 || abs (y-b) > 1 = False
f (r:g:y:b:[]) []
 | (abs (r-g) == 0) && (abs (y-b) == 0) = True
 | otherwise = False
f (r:g:y:b:[]) (x:xs) -- Track the values
 | x == 'R' = f (r+1:g:y:b:[]) xs
 | x == 'G' = f (r:g+1:y:b:[]) xs
 | x == 'Y' = f (r:g:y+1:b:[]) xs
 | x == 'B' = f (r:g:y:b+1:[]) xs

f2 :: [Int] -> [Char] -> [Int]
f2 (r:g:y:b:[]) xs -- Check prefix
 | abs (r-g) > 1 || abs (y-b) > 1 = (r:g:y:b:[])
f2 (r:g:y:b:[]) []
 | (abs (r-g) <= 1) && (abs (y-b) <= 1) = (r:g:y:b:[])
 | otherwise = (r:g:y:b:[])
f2 (r:g:y:b:[]) (x:xs) -- Track the values
 | x == 'R' = f2 (r+1:g:y:b:[]) xs
 | x == 'G' = f2 (r:g+1:y:b:[]) xs
 | x == 'Y' = f2 (r:g:y+1:b:[]) xs
 | x == 'B' = f2 (r:g:y:b+1:[]) xs

getStr :: Int -> [[Char]] -> IO ()
getStr 0 ass = putStrLn $ intercalate "\n" (map show (isSequence ass)) 
getStr n ass = getLine >>= \str -> getStr (n-1) (ass ++ [str])

main = getLine >>= \tst -> getStr ((read :: String -> Int) tst) [[]]
