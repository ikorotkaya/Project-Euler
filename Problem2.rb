MAX_NUMBER = 4000000

x = 1
y = 2
z = x + y
sum = 2

while z < MAX_NUMBER do
  z = x + y 
  x = y
  y = z

  if z % 2 == 0 # z.even?
    sum += z
  end
end

puts sum