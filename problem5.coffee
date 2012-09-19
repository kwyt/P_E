###
2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり、そのような数字の中では最小の値である。
では、1 から 20 までの整数全てで割り切れる数字の中で最小の値はいくらになるか。
###

u = (a, b) ->
  while c isnt 0
    c = a % b
    a = b
    b = c
  a

f = ->
  s = 1
  i = 2

  while i <= 20
    s *= i / u(s, i)
    i++
  console.log s

f()