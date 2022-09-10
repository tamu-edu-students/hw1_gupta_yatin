# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.max(2).reduce(:+)
  end     
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  result = arr.combination(2).find { |a,b| a+b == number }
  !result.nil?
end

# Part 2

def hello(name)
  "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  if string.nil? || string.length < 1 || !string[0].match?(/[A-Za-z]/)
      return false
  end
  string = string.upcase
  !string[0].start_with?("A", "E", "I", "O", "U")
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.nil? || string.length < 1 || !(string.count('01') == string.size)
    return false
  end

  c = string.to_i(2)
  c % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock

  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn_arg, price_arg)
    raise ArgumentError if price_arg < 1 || isbn_arg.length < 1
    # instance variable initialization
    @isbn = isbn_arg
    @price = price_arg
  end

  def price_as_string
    "$%0.2f" % @price
  end
  # YOUR CODE HERE
end
