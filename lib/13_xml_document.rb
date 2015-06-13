class XmlDocument
	
	def initialize(indents=false)
		@indents = indents
	end

	def method_missing(name, *args, &block)
		if block_given?
			if @indents
				answer = ""
				answer << "<#{name}>\n"
				answer << block.call.split("\n").map { |b| b = "  " + b }.join("\n")+"\n"
				answer << "</#{name}>\n"
				return answer
			else
	      		return "<#{name}>"+"#{block.call}"+"</#{name}>"
	      	end
	    end
	    if args.size == 0 
	    	return "<#{name}/>" 
	    else 
	    	arg = args[0]
	    	if arg.is_a?(String)
	    		return "<#{name}>#{arg}</#{name}>"
	    	elsif arg.is_a?(Hash)
	    		arg.map { |key, value|
	    			if @indents
	    				return "<#{name} #{key}='#{value}'/>\n"
	    			else 
	    				return "<#{name} #{key}='#{value}'/>"
	    			end
	    		}
	    	end
	    end
	end

end
