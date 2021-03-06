# Problem 28 「螺旋状に並んだ数の対角線」 †
# 1から初めて右方向に進み時計回りに数字を増やしていき,
# 5×5の螺旋が以下のように生成される:

# 21  22  23  24  25
# 20  07  08  09  10
# 19  06  01  02  11
# 18  05  04  03  12
# 17  16  15  14  13
# 両対角線上の数字の合計は101であることが確かめられる.

# 1001×1001の螺旋を同じ方法で生成したとき, 対角線上の数字の和はいくつか?

n = 3
sum = 1
while n <= 1001
  i = 0
  while i < 4
    sum += (n ** 2) - i * (n -1)
    i += 1
  end
  n += 2
end

p sum

