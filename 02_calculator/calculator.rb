def add (x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(numbers)
  numbers.inject(0){|total, number| total+number}
end

def multiply(array)
  result = 1
  array.each do |i|
    result *= i
  end
end

def power(base,power)
  result = 1
  while (power > 0) do
    result *= base
    power -= 1
  end
  return result
end

def factorial x
  if x <= 1
    1
  else
    x * factorial(x-1)
  end
end