main = print $ sum $ takeWhile (<= 2000000) primes

primes = [x | x <- 2:[3,5..], isPrime x]
isPrime x = all (\n -> x `mod` n /= 0) (takeWhile (\n -> n * n <= x) (2:[3,5..]))
