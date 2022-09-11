# frozen_string_literal: true

# Part 1

def sum(arr)
  # add elements of the array. Start with sum as 0
  arr.inject(0, :+)
end

def max_2_sum(arr)
  # Sort the array in non-descending order. Take the last two and add.
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n?(arr, number)
  # Store combinations of 2
  arr_2 = arr.combination(2)
  # Find with a condition
  ans = arr_2.find{|x,y| x+y==number}
  if(ans) 
    return true
  else 
    return false
  end
end

# Part 2

def hello(name)
  # return Hello followed by name
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # regex 
  regex = /^[^aeiouAEIOU\W]/i
  if regex.match(string) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(string)
  # First clause verifies that string is not empty, 
  # second clause verifies that each chatr
  if !string.empty? and string.chars.all? {|x| x =~ /[01]/} and (string.to_i(2) % 4 == 0)
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock

  # constructor to init isbn and price
  def initialize(isbn, price)
    if price<=0
      raise ArgumentError, "Price should not positive"
    end
    if isbn.empty?
      raise ArgumentError, "Price should not positive"
    end
    @isbn = isbn
    @price = price
  end
  
  # Getters and setters
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string()
    # Prefix price with $ and convert price to float number formatted with 2 decimal points
    return "$" + "%0.2f" % [@price.to_f]
  end
end
