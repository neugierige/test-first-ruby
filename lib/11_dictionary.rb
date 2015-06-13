class Dictionary
  attr_reader :entries

  def initialize 
  	@entries = {}
  end

  def add(item)
  	if item.is_a?(Hash) 
  		@entries.merge!(item)
  	else
  		@entries[item] = nil
  	end
  end

  def include?(item)
  	@entries.has_key?(item)
  end

  def find(item)
  	@entries.select { |x| x.include?(item) }
  end

  def keywords
	@entries.keys.sort
  end

  def printable
  	answer = []
  		@entries.sort.each {
  			|key, value|  answer << "[#{key}] \"#{value}\""
  		}
  	answer.join("\n")
  end
  
end
