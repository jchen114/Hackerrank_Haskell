
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [area l r a b, volume l r a b]

area :: Int -> Int -> [Int] -> [Int] -> Double
area l r as bs = sum [integrate l r a b | (a,b) <- zip as bs]

volume :: Int -> Int -> [Int] -> [Int] -> Double
volume l r as bs = pi * (f l r as bs + g l r as bs)

f :: Int -> Int -> [Int] -> [Int] -> Double
f l r as bs = sum [integrate l r (round (pow a 2)) (2*b) | (a,b) <- zip as bs]

g :: Int -> Int -> [Int] -> [Int] -> Double
g l r as bs = 2 * sum [integrate l r (ak * aj) (bk + bj) | ((ak,bk),k) <- zip (zip as bs) [0..], ((aj,bj),j) <- zip (zip as bs) [0..], j > k]

pow :: (Integral a, Floating b) => a -> a -> b
pow a b
	| b < 0 = (fromIntegral 1 / fromIntegral a) * pow a (b + 1)
	| b == 0 = 1
	| otherwise = fromIntegral a * pow a (b - 1)  

integrate :: (Integral a, Floating b) => a -> a -> a -> a -> b
integrate l r m n
	| n == -1 = fromIntegral m * log (fromIntegral r / fromIntegral l)
	| otherwise = fromIntegral m / fromIntegral (n + 1) * (pow r (n + 1) - pow l (n + 1))

test :: Int -> Int -> [Int] -> [Int] -> [(Int,Int)]
test l r as bs = [(k,l) | ((ak,bk),k) <- zip (zip as bs) [0..], ((al,bl),l) <- zip (zip as bs) [0..], l > k]

gtest :: Int -> Int -> [Int] -> [Int] -> [Int]
gtest l r as bs = [bk + bl + 1| ((ak,bk),k) <- zip (zip as bs) [0..], ((al,bl),l) <- zip (zip as bs) [0..], l > k]

gtest2 :: Int -> Int -> [Int] -> [Int] -> [Int]
gtest2 l r as bs = [ak * al | ((ak,bk),k) <- zip (zip as bs) [0..], ((al,bl),l) <- zip (zip as bs) [0..], l > k]

gtest3 :: Int -> Int -> [Int] -> [Int] -> [(Int, Int, Int, Double)]
gtest3 l r as bs = [(r, l, bk+bl+1, pow r (bk+bl+1)) | ((ak,bk),k) <- zip (zip as bs) [0..], ((al,bl),l) <- zip (zip as bs) [0..], l > k]

gtest4 :: Int -> Int -> [Int] -> [Int] -> [(Double, Double)]
gtest4 l r as bs = [(pow r (bk+bl+1), pow l (bk+bl+1)) | ((ak,bk),k) <- zip (zip as bs) [0..], ((al,bl),l) <- zip (zip as bs) [0..], l > k]

