NUMBER = 600851475143

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

p dividers(NUMBER)

def is_prime?(i)
  return dividers(i).size <= 2
end


prime_dividers = []
dividers(NUMBER).each do |divider|
  if is_prime?(divider)
    prime_dividers.push(divider)
  end
end

p prime_dividers

puts prime_dividers.last


