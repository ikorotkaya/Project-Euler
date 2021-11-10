x = 100
y = 100
result = 0

while x <= 999 && y <= 999
  z = x * y
  if z > result && z.to_s == z.to_s.reverse
    result = z
  end
  y = y + 1
  if y == 1000
    x = x + 1
    y = 100
  end
end

puts result
