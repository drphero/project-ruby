def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(numbers)
  numbers.inject(0) {|sum, n| sum + n}
end

def multiply(*numbers)
  numbers.inject(1) {|product, n| product * n}
end

def power(num1,num2)
  num1 ** num2
end

def factorial(number)
  if number == 0
    return 1
  else
  (1..number).inject(:*)
  end
end