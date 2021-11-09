#The sum of the squares of the first ten natural numbers is,
#The square of the sum of the first ten natural numbers is,

#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

array = Array(1..100)
# Same thing using Range: (1..100).to_a

sum_of_numbers = array.sum
puts sum_of_numbers

sum_of_squares = array.map { |a| a ** 2 }.sum
puts sum_of_squares

answer = sum_of_numbers ** 2 - sum_of_squares
puts answer

def sum(array)
  summ = 0
  array.each do |a|
    summ += a
  end
  summ
end

p sum([1,2,3])

class Array
  def sum_by_ira
    summ = 0
    self.each do |a|
      summ += a
    end
    summ
  end
end

p [1,2,3].sum_by_ira

def syntax_sugar_sum_1(array)
  array.inject(0) do |sum, num|
    sum += num
  end
end

p syntax_sugar_sum_1([1,2,3])

def syntax_sugar_sum_3(array)
  array.reduce(:+)
end

p syntax_sugar_sum_3([1,2,3])


word_distribution = ["foo", "bar", "foo"].inject(Hash.new(0)) do |hash, word|
  hash[word] += 1
  hash
end

p word_distribution


word_distribution = ["foo", "bar", "foo"].each_with_object(Hash.new(0)) do |word, hash|
  hash[word] += 1
end

p word_distribution
