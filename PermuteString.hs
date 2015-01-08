import Data.List

permute :: [Char] -> [Char]
permute [] = []
permute as = f (take 2 as) ++ permute (drop 2 as)

f :: [Char] -> [Char]
f as = [last as] ++ [head as]

gather :: [[Char]] -> Int -> IO ()
gather ass 0 = putStr $ (intercalate "\n" (tail (map permute ass))) ++ "\n"
gather ass n = getLine >>= \str -> gather (ass ++ [str]) (n - 1)

main = getLine >>= \trials -> gather [[]] $ (read :: String -> Int) trials