# Part 1

def sum arr
  arraySum = 0
  arr.each {|i|
  arraySum += i}
  return arraySum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    return (arr.sort!.pop)+(arr.sort!.pop)
  end
end

def sum_to_n? arr, n
  if arr.empty? 
    return false
  else arr.permutation(2).any? { |i, j| i + j == n }
  end
end
# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
	# constructor
	def initialize isbn, price
		if isbn == "" || price <= 0
			raise ArgumentError.new
		end
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end
	
	def isbn=(new_isbn)
		@isbn = new_isbn
	end

	def price
		@price
	end

	def price=(new_price)
		@price = new_price
	end

	def price_as_string
		return number_to_currency(@price, precision: 2) 
	end
end
