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
