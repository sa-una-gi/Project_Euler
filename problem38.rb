# Problem 38 「パンデジタル倍数」 †
# 192 に 1, 2, 3 を掛けてみよう.

# 192 × 1 = 192
# 192 × 2 = 384
# 192 × 3 = 576

# 積を連結することで1から9の パンデジタル数 192384576 が得られる. 192384576 を 192 と (1,2,3) の連結積と呼ぶ.

# 同じようにして, 9 を 1,2,3,4,5 と掛け連結することでパンデジタル数 918273645 が得られる.
# これは 9 と (1,2,3,4,5) との連結積である.

# 整数と (1,2,...,n) (n > 1) との連結積として得られる9桁のパンデジタル数の中で最大のものはいくつか?

def pandegital?(num_s)
  if num_s.chars.size != 9
    return false
  elsif num_s.chars.include?("0")
    return false
  elsif num_s.chars.uniq.size == 9
    return true
  else
    return false
  end
end

limit = 0
1.upto(1.0 / 0) do |num|
  sum = String.new
  sum += (num * 1).to_s
  sum += (num * 2).to_s
  if sum.chars.size > 9
    limit = num
    break
  end
end

max = 0
2.upto(limit) do |int|
  int_to_str = String.new
  1.upto(int) do |n|
    int_to_str += (int * n).to_s
    if int_to_str.chars.size >= 9
      if pandegital?(int_to_str) && int_to_str.to_i > max
        max = int_to_str.to_i
      end
      break
    end
  end
end

p max

