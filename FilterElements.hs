import Data.List

f :: [Int] -> Int -> [Int]
f as b = [c | (c,_) <- sortBy u [head ys | ys <- [xs | xs <- groupBy t $ sortBy s (zip as [0..]), length xs >= b]]]

s :: (Ord a, Ord a1) => (a,a1) -> (a,a1) -> Ordering
s (a1, b1) (a2, b2)
 | a1 < a2 = LT
 | a1 > a2 = GT
 | a1 == a2 = compare b1 b2

t :: Eq a => (a,t) -> (a,t1) -> Bool
t (a1,b1) (a2,b2)
 | a1 == a2 = True
 | otherwise = False

u :: (Ord b) => (t,b) -> (t1,b) -> Ordering
u (a0,b0) (a1,b1) = compare b0 b1

v :: [Int] -> [Int]
v as
 | as == [] = [(-1)]
 | otherwise = as

--w :: Int -> IO ()
--w n = getLine >>= \b -> map (read :: String -> Int) (words b)

myTest :: [Int] -> [String]
myTest xs = ["output line " ++ show xs ++ "\n"]

p :: [[Int]] -> IO ()
p ass = putStrLn $ intercalate "\n" $ (map q ass)

q :: [Int] -> [Char]
q as = intercalate " " (map show as)

main = do
	--putStrLn "Enter number of test cases: "
	ntests <- fmap read getLine :: IO Int
	let	loop k acc | k > ntests = return $ reverse acc
	   	loop k acc = do
			--putStrLn $ "Enter size, and num" ++ show k ++ ": "
			a <- fmap (map read . words) getLine :: IO [Int]
			--putStrLn $ "Enter list of ints"
			b <- fmap (map read . words) getLine :: IO [Int]
			let output = v $ f b (last a)
			loop (k+1) (output:acc)
	allOutput <- loop 1 []
	p allOutput
