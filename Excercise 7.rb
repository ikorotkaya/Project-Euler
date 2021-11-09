def dividers(x)
  arr = []
  y = 1

  while y <= Math.sqrt(x) do
    if x % y == 0
      arr.push(y)
      arr.push(x / y)
    end

    y = y + 1
  end

  return arr.sort
end

def is_prime?(i)
  return dividers(i).size <= 2
end

def nth_prime_number(index)
  x = 0
  y = 0

  while y <= index do
    x += 1

    if is_prime?(x)
      y += 1
    end
  end

  return x
end

puts nth_prime_number(6)
puts nth_prime_number(10001)
