hello_worlds n = do 
									putStrLn "Hello World" 
									if n > 1 then hello_worlds (n-1) else return ()