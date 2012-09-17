###
13195 の素因数は 5、7、13、29 である。
600851475143 の素因数のうち最大のものを求めよ。
###

num = 600851475143
i = 1
while i <= num
  if num % i is 0
    j = i
    num = num / i
  i++
console.log j