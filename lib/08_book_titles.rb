class Book
  attr_accessor :title
  @@non_caps = ["the", "a", "an", "and", "in", "of"] 

  def title
  	@new_title = ""
    words = @title.split(" ")
    words.each { |word| 
      unless @@non_caps.include?(word)
      	word.capitalize!
      end
    }
    words[0].capitalize!
    @new_title = words.join(" ")
  end
end
