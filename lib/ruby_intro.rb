  # Parte 1

  def sum(arr)
    arr.sum
  end
  
  def max_2_sum(arr)
    arr.sort.last(2).sum
  end
  
  def sum_to_n?(arr, n)
    arr.combination(2).any? { |a, b| a + b == n }
  end
  
  
  # Parte 2

  def hello(name)
    "Hello, #{name}"
  end
  
  def starts_with_consonant?(s)
    !!s[0]&.match(/[bcdfghjklmnpqrstvwxyz]/i)
  end
  
  def binary_multiple_of_4?(s)
    return false if s.empty? || s =~ /[^01]/
    s.to_i(2) % 4 == 0
  end
  
  
  # Parte 3

  class BookInStock
    attr_accessor :isbn, :price
  
    def initialize(isbn, price)
      raise ArgumentError if isbn.empty? || price <= 0
      @isbn = isbn
      @price = price
    end
  
    def price_as_string
      format("$%.2f", @price)
    end
  end
  