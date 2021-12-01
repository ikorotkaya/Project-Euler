number = 2 ** 1000

sum = number.to_s.split("")

digits = []
sum.each do |digit|
  digits.push(digit.to_i)
end

answer = 0

digits.each do |digit|
  answer += digit
end

# p answer

################

number = 2 ** 1000

raw_digits = number.to_s.split("")

digits = raw_digits.map(&:to_i)

p digits.sum

#########

p (2 ** 1000).to_s.split("").map(&:to_i).reduce(:+)
