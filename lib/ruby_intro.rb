#File: ruby_intro.rb
#Author: Dane Walburg
#Date: 2/18/23

# Part 1

def sum arr
  sum = 0
  
  #Uses a loop to iterate over each element in array and add to sum
  arr.each do |num|
    sum += num
  end

  return sum
end

def max_2_sum arr

  #Returns 0 if array is empty
  return 0 if arr.empty?

  #Returns the only element if array only has one element
  return arr[0] if arr.length == 1

  #Sorts the array in ascending order and returns the sum of the largest elements
  return arr.sort[-1] + arr.sort[-2]

end

def sum_to_n? arr, n
  return false if arr.empty?
  hash = {}

  arr.each do |num|

    #Determines which number would sum with num to equal n
    complement = n - num

    #Returns true if complement is stored in hash
    return true if hash[complement]

    #Stores num in hash for later use
    hash[num] = true

  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s

    #If the first character is a letter, converts it to uppercase and returns whether or not it is a consonant
    if s[0] =~ /[[:alpha:]]/
      firstCharacter = s[0].upcase
      return !['A', 'E', 'I', 'O', 'U'].include?(firstCharacter)

    else
      return false
    end
end

def binary_multiple_of_4? s

  #Returns false if the string contains anything other than 0's and 1's
  if s.match(/[^01]/)
    return false
  end

  #Checks if the string is 0 or if it ends with two 0's
  return s == "0" || s.end_with?("00")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)

    #If isbn string is empty or price is less than 0, error is raised
    if isbn.empty?
      raise ArgumentError, "ERROR: ISBN number cannot be empty."
    end
    if price <= 0
      raise ArgumentError, "ERROR: Price must be greater than zero."
    end

    #Assigning values
    @isbn = isbn
    @price = price

  end

  #Returns the price of the book formatted as a string with two decimal places and leading dollar sign
  def price_as_string
    sprintf("$%.2f", @price)
  end

end