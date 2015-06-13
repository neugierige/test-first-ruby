def ftoc(fahrenheit)
	c = (fahrenheit - 32)*5/9.0
	if c % 1 == 0
		c = c.to_i
	end
	return c
end


def ctof(celsius)
	f = (celsius * 9/5.0 + 32)
	if f % 1 == 0
		f = f.to_i
	end
	return f
end

