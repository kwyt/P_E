###
フィボナッチ数列の項は前の2つの項の和である。 最初の2項を 1, 2 とすれば、最初の10項は以下の通りである。
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
数列の項の値が400万を超えない範囲で、偶数値の項の総和を求めよ。
###


fib = ->
  a = 1
  b = 2
  c = 0
  r = 2
  m = 4000000
  while a < m
    c = a + b
    r += c  if c % 2 is 0 and c < m
    a = c + b
    r += a  if a % 2 is 0 and a < m
    b = a + c
    r += b  if b % 2 is 0 and b < m
    console.log r

fib()