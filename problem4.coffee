###
左右どちらから読んでも同じ値になる数を回文数という。 2桁の数の積で表される回文数のうち、最大のものは 9009 = 91 × 99 である。
では、3桁の数の積で表される回文数のうち最大のものはいくらになるか。
###

Pn = (i) ->
  n = 0
  while i > 0
    n *= 10
    n += (i % 10)
    i = Math.floor (i / 10)
    
   return n
    
r = 0
for i in [100..999]
  for j in [100..999]
    if i*j is Pn(i*j) and r < i*j
      r=i*j
      
console.log r
