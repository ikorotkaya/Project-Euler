require_relative "./loud_each"

def announce
  puts "--> I'm doing something, bitch:"
  y = yield
  puts "--> Y: #{y}"
  p  y
end

announce { puts "YO" }

announce do
  x = 1
  x =  x * 1000
  x
end

loud_each([1, 2, 3]) do |el|
  el * el
end
