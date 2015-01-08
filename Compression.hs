
compress :: [Char] -> [Char]
compress [] = []
compress as
	| g as 1 == 1 = [head as] ++ compress (drop 1 as)
	| otherwise = [head as] ++ show (g as 1) ++ compress (drop (g as 1) as)

g :: [Char] -> Int -> Int
g [] i = i
g (a:[]) i = i
g (a:as) i
	| a == head as = g as (i + 1)
	| otherwise = i

main = getLine >>= \str -> putStrLn $ compress str