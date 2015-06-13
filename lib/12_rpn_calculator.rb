class RPNCalculator

  def initialize
  	@array = []
  	@tokens_array = []
  end

  def push(n)
  	@array << n
  end

  def value
  	@array.last
  end

  def tokens(input)
    input.split.map { |i| i[/\d/] ? @tokens_array << i.to_f : @tokens_array << i.to_sym }
    @tokens_array
  end

  def do_math
  	if @array.empty?
  		raise "calculator is empty"
  	else
  		n1 = @array.pop
  		n2 = @array.pop
  		@array << (yield n1, n2)
  	end
  end

  def plus
  	do_math { |n1, n2| n1 + n2 }
  end

  def minus
  	do_math { |n1, n2| n2 - n1 }
  end

  def times
  	do_math { |n1, n2| n1 * n2 }
  end

  def divide
  	do_math { |n1, n2| n2.to_f / n1 }
  end

  def evaluate(input)
  	ops = [:+, :-, :*, :/]
  	tokens(input).each { |item|
  		if ops.include?(item)
  			case item
  			when :+ then plus
  			when :- then minus
  			when :* then times
  			when :/ then divide
  			else
  				# nothing
  			end
  		else
  			@array << item
  		end
  	}
	value
  end

end

