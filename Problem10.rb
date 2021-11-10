# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def is_prime?(x)
  return false if x == 1

  arr = []
  y = 1

  while y <= Math.sqrt(x) do

    if x % y == 0 && x != y
      arr.push(y)
      arr.push(x / y)
    
      if arr.size > 2
        return false
      end
    end 

    y = y + 1
  end

  return true
end

def sum_prime_numbers(below_number)
  x = 1
  sum = 0

  while x < below_number do

    if is_prime?(x)
      sum += x
    end

    x += 1
  end

  return sum
end

puts sum_prime_numbers(2_000_000)