def add(n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum(numArray)
	answer = 0
	for x in numArray
		answer += x
	end
	answer
end

def multiply(*nums)
	answer = 0
	unless nums.empty? 
		answer = 1
		for x in nums
			answer = x * answer
		end
	end
	answer
end

def power(n1, n2)
	n1**n2
end

def factorial(num)
	answer = 1
	while num >= 1 
		answer = num*answer
		num -= 1
	end
	return answer
end