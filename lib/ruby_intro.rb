# When done, submit this entire file to the autograder.

# Part 1

 
def sum(array)
	s = 0
	array.each {|x| s= s + x}
	s
end

def max_2_sum(array)
	return 0 if array.empty?
	return array[0] if array.length == 1
	ar = array.sort
	ar[-1] + ar[-2]
end
def sum_to_n? elements, total
  if elements.empty?
    return false if total == 0
  else
    elements.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
    end
  end

  return false
end

# Part 2
def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant? (s)
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Not a legal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
