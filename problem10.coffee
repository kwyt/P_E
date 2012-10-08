###
10以下の素数の和は2 + 3 + 5 + 7 = 17である.
200万以下の全ての素数の和を計算しなさい.
###

(->
  i = 2
  r = 0
  s = []
  m = 2000000
  
  while i <= m
    s[i] = 1
    i++
    
  p = 2
  while p <= m
    if s[p] is 1
      r += p
      i = p * 2
      while i <= m
        s[i] = 0
        i += p
    p++
  console.log r
)()