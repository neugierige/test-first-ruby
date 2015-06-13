def translate(str)
	vowels = ["a", "e", "i", "o", "u"]
	new_word = ""
	str.split.each do |word|
		vowel_idx = 0

		if vowels.include? word[0]
			vowel_idx = 0
		elsif word.include? "qu"
			until word[vowel_idx-2]+word[vowel_idx-1] == "qu"
				vowel_idx += 1
			end
		else
			until vowels.include? word[vowel_idx]
			vowel_idx += 1
			end
		end

		idx_right = vowel_idx
		while idx_right < word.length
			new_word += word[idx_right]
			idx_right += 1
		end

		idx_left = 0
		while idx_left < vowel_idx
			new_word += word[idx_left]
			idx_left += 1
		end
		new_word += "ay "

	end

	new_word.chomp(" ")
end
