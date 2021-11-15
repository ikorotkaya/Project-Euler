def dividers_count(x)
  arr = []
  y = 1

  while y <= Math.sqrt(x) do
    if x % y == 0
      arr.push(y)
      arr.push(x / y)
    end
    
    y = y + 1
  end

  return arr.size
end

def triangle_number(x)
  # return x * (x + 1) / 2
  y = 0
  sum = 0

  while y < x do
    sum += y + 1
    y += 1
  end
  
  sum
end

i = 1

while dividers_count(triangle_number(i)) < 500 do 
  
  i += 1
end 

num = triangle_number(i)

p [num, dividers_count(num)]