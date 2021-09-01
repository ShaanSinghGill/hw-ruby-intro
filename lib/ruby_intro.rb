# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|a| sum += a}
  sum
end

def max_2_sum arr
  initial = 0
  if arr.length == 0 
    return 0
  elsif arr.length == 1 
    return arr.max
  else
    largest = arr.max
    index_of_largest = arr.rindex(largest)
    arr.delete_at(index_of_largest)
    slargest = arr.max
    return largest+ slargest
  end
end

def sum_to_n? arr, n
  past = []
  arr.each {|a| 
    if past.include? n-a
      return true
    end
    past.push(a)
    }
    return false
end

# Part 2

def hello(name)
  name= "Hello, " + name
  return name
end

def starts_with_consonant? s
  if s.length  == 0 || !s.is_a?(String)
    return false
  end 

  vowels = ["a", "e", "i" ,"o" ,"u"]
  first_letter_of_s = s[0].downcase

  if !first_letter_of_s.match?(/[[:alpha:]]/) 
    return false
  end 

  if !vowels.include? first_letter_of_s
    return true
  end

  return false
end

def binary_multiple_of_4? s
  if s.length == 0 
    return false 
  end
  if s.chars.all? {|x| x =~ /[01]/} 
    value = s.to_i(2)
    if value % 4 == 0 
      return true 
    end 
  end 
  return false
end

# Part 3

class BookInStock
  @isbn
  @price
  def initialize(isbn, price)
    if !isbn.is_a?(String) || isbn.length == 0
      raise ArgumentError
    end 
    if price <=  0
      raise ArgumentError
    end 
    @isbn = isbn
    @price = price
  end 
  def isbn
    return @isbn
  end 
  def price
    return @price 
  end 

  def isbn=(isbn)
    @isbn = isbn
  end 
  def price= (price)
    @price = price
  end 
  def price_as_string 
    sprintf("$%2.2f", @price)
  end
 end
