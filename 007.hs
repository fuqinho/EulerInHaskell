main = print $ primes !! 10000

primes = [x | x <- [2..], isPrime x]
isPrime x = all (\n -> x `mod` n /= 0) (takeWhile (\n -> n * n <= x) [2..])
