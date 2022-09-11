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
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
