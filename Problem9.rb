# a < 1000
# b < 1000
# c < 1000
a = 1
b = 1
c = 1

while c < 1000 && b < 1000 && a < 1000

  if a < b && b < c && (a + b + c) == 1000 && (a**2 + b**2) == c**2
    puts a * b * c
    break
  end

  if c == 999
    b += 1
    c = 1
  end
  if b == 999
    a += 1
    b = 1
  end

  c += 1
  # while b < 1000
  #   p [a, b, c]
  #   b += 1
  # end
end
