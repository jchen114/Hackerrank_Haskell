import Data.List

pascal :: (Show a, Integral a) => a -> IO ()
pascal n
	| n == 0 = return ()
	| otherwise = pascal (n - 1) >> (putStrLn $ intercalate " " $ map show [calc (n-1) c | c <- [0..(n - 1)]])

calc :: (Integral a) => a -> a -> a
calc r c = fac r `div` (fac c * fac (r - c))

fac :: (Integral a) => a -> a
fac a
	| a == 0 = 1
	| otherwise = a * fac (a - 1)

main = putStrLn "Enter the number of rows"
			>> getLine
			>>= \rows -> pascal . (read :: String -> Int) $ rows