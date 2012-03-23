main = print $ product $ head [[a,b,c] | c <- [1..500], b <- [1..c], a <- [1000-b-c],  a^2 + b^2 == c^2]
