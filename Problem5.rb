#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def is_divisible?(num)
    # num % 2 == 0 && num % 3 == 0 && num % 4 == 0 && num % 5 == 0 && num % 7 == 0 && num % 8 == 0 && num % 9 == 0  && num % 11 == 0 && num % 13 == 0 && num % 16 == 0 && num % 17 == 0 && num % 19 == 0
    for i in 1..20
      if num % i > 0
        return false
      end 
    end

    return true
end

x = 1
while !is_divisible?(x) do
    x += 1
end

puts x