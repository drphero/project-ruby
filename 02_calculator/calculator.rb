def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(numbers)
  numbers.inject(0) {|sum, n| sum + n}
  end