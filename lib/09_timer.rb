class Timer
  attr_accessor :seconds
  
  def initialize
     @seconds = 0
  end

  def time_string
  	hh = @seconds / (60*60)
  	mm = @seconds % (60*60) / 60
  	ss = @seconds % (60*60) % 60
  	"#{padder(hh)}:" + "#{padder(mm)}:" + "#{padder(ss)}"
  end

  	def padder(num)
		num.to_s.length == 1 ? ("0"+num.to_s) : num.to_s
	end
end
