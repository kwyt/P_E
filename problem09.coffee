###
ピタゴラスの三つ組(ピタゴラスの定理を満たす自然数)とはa<b<cで
 a² + b² = c²
 を満たす数の組である.
 例えば, 3² + 4² = 9 + 16 = 25 = 5²である.
 a + b + c = 1000となるピタゴラスの三つ組が一つだけ存在する. このa,b,cの積を計算しなさい.
###

(->
  i = 0
  while i < 1000
    j = i + 1
    while j < 1000
      k = j + 1
      while k < 1000
        if (i + j + k) is 1000 and Math.pow(i, 2) + Math.pow(j, 2) is Math.pow(k, 2)
          r = i * j * k
          console.log r
        k++
      j++
    i++
)()