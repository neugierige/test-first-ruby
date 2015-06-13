class Array

	def sum
		answer = 0
		self.length == 0 ? 0 : self.each { |num| answer += num }
		answer
	end

	def square
		self.length == 0 ? [] : self.map {|num| num**2}
	end

	def square!
		self.length == 0 ? [] : self.map! {|num| num**2}
	end

end