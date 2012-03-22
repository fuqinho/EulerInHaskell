fib = 1:2:zipWith (+) fib (tail fib)
answer = sum [x | x <- takeWhile (<= 4000000) fib, even x]

main = print answer
