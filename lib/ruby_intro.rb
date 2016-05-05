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
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase!
  return (/[a-z]/=~s[0])!= nil && (/[ueoai]/=~s[0]) == nil ? true : false
end

def binary_multiple_of_4? s
  if s=~/^[01]+$/ 
  	return Integer(s) % 4 == 0 ? true : false
  else
  	return false
  end
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

	#auto set and get
 	attr_accessor :isbn
  attr_accessor :price

	def price_as_string
		 "$"+'%.2f' % ((@price * 100).round / 100.0)
	end
end
