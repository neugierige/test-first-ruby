def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, x=2)
	x.times do puts str
	end
end


def start_of_word(str, num)
	answer = ""
	n = 0
	while n < num
		answer = answer + str[n]
		n += 1
	end
	return answer
end

def first_word(str)
	array = str.split(" ")
	array[0]
end



def titleize(str)
	array = str.split(" ")
	x = 0
	no_cap_words = ["the", "an", "a", "and", "with", "over", "under", "as", "at", "in", "for", "to"]
	while x < array.length
		if x == 0
			array[x][0] = array[x][0].to_s.upcase!
		else
			unless no_cap_words.include? array[x]
				array[x][0] = array[x][0].to_s.upcase!
			end
		end
		x += 1
	end
	array.join(" ")
end

