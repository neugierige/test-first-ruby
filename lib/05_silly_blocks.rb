def reverser(&block)
	answer = []
    block.call.split.each { |word| 
    	answer << word.reverse
    }
    answer.join(" ")
end

 
def adder(num=1, &block)
    num + block.call
end
 
def repeater (num=1, &block)
    num.times { block.call }
end