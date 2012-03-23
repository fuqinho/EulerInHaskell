main = print answer

answer = maximum $ factorize 600851475143 [2,3..]

factorize :: (Integral a) => a -> [a] -> [a]
factorize n a@(x:xs)
  | x * x > n       = [n]
  | n `mod` x == 0  = x : factorize (n `div` x) a
  | otherwise       = factorize n xs
