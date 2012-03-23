main = print answer

answer = maximum $ [x * y | x <- [999,998..100], y <- [999,998..100], isPalindrome (x * y)]

isPalindrome :: Int -> Bool
isPalindrome x = x == ((read . reverse . show) x :: Int)
