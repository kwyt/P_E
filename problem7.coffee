###
素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり、6番目の素数は 13 である。
10001 番目の素数を求めよ。
###
p = (n) ->
  return true  if n is 2
  return false  if n % 2 is 0 or n is 1
  l = n
  i = 3

  while i < l
    return false  if n % i is 0
    i += 2
  true
r = ->
  i = 3
  c = 1
  while c < 10001
    c++  if p(i) is true
    i += 2
  console.log i - 2
r()