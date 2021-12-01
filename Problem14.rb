def collatz_chain(x)

  arr = [x]


  while x != 1 do
    # if x % 2 == 0
    if x.even?
      x /= 2
      # x = x / 2
    else
      x = 3 * x + 1
    end

    arr.push(x)
  end

  arr
end

x = 1
max_length = 0

while x < 1_000_000 do

  current_length = collatz_chain(x).size

  if current_length > max_length
    max_length = current_length

    p [x, max_length]
  end

  x += 1

end
