class Temperature

	def initialize(hash = {})
		@fahrenheit = hash[:f]
		@celsius = hash[:c]
	end

	#Conversion methods
	def ftoc(f)
		return (f - 32) * 5.0/9.0
	end

	def ctof(c)
		return c * 9.0 / 5.0 + 32
	end


	#In
	def in_fahrenheit
		@fahrenheit != nil ? @fahrenheit : self.ctof(@celsius)
	end

	def in_celsius
		@celsius != nil ? @celsius : self.ftoc(@fahrenheit)
	end


	#From
	def self.from_celsius(c)
		Temperature.new(c: c)
	end

	def self.from_fahrenheit(f)
		Temperature.new(f: f)
	end
  
end


#SUBCLASSES 
class Celsius < Temperature
  	def initialize(celsius)
    	@celsius = celsius
  	end
end

class Fahrenheit < Temperature
  	def initialize(fahrenheit)
    	@fahrenheit = fahrenheit
  	end
end

