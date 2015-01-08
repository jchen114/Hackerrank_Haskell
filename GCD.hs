
gcd' :: Integral a => a -> a -> a
gcd' n m 
	| n == 0 = m
	| m == 0 = n
	| n > m = gcd' m (n `mod` m)
	| m > n = gcd' n (m `mod` n) 
	| otherwise = m