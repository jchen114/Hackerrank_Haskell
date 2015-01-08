
compress :: [Char] -> [Char] -> IO ()
compress as bs = putStrLn (show lp ++ " " ++ p ++ "\n" ++ show ((length as) - lp) ++ " " ++ (drop lp as) ++ "\n" ++ show ((length bs) - lp) ++ " " ++ (drop lp bs)) 
	where 
	p = prefix as bs
	lp = length (prefix as bs)

prefix :: [Char] -> [Char] -> [Char]
prefix (a:as) (b:bs)
	| a == b = b : prefix as bs
prefix _ _ = []

main = getLine >>= \fst -> getLine >>= \sst -> compress fst sst
