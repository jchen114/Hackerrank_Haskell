
mingle :: String -> String -> String
mingle (a:as) (b:bs) = ([a] ++ [b]) ++ mingle as bs
mingle [] [] = []

main = getLine
		>>= \a -> getLine
		>>= \b -> putStrLn $ mingle a b