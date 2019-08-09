#write your code here
def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum arr
	sum = 0
	while arr.length >= 1
		sum += arr.pop
	end
	sum
end

def multiply a, b
	a * b
end

def power a, b
	product = 1
	while b >= 1
		product *= a
		b -= 1
	end
	product
end

def factorial a
	product = 1
	while a >= 1
		product *= a
		a -= 1
	end
	product
end
