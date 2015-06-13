NUMS_00_19 = [ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", 
  "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
  "seventeen", "eighteen", "nineteen" ]

NUMS_20_90 = { 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty',
               60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety' }

class Fixnum
  def in_words
    num_arr = self.to_s.split("").reverse.map! { |n| n.to_i }
    $answer = []

    def parse_num(arr)
      units = ["", "thousand", "million", "billion", "trillion"]
      quotient = arr.length / 3
      remainder = arr.length % 3
      remainder == 0 ? level = quotient -= 1 : level = quotient
      remainder == 0 ? controller(arr.pop(3)) : controller(arr.pop(remainder))
      $answer << units[level]   # adds unit level
      controller(arr) if arr.join.to_i != 0
    end

    def words_20_90(arr)
      $answer << NUMS_20_90[arr.pop.to_i * 10]
      arr.last != 0 ? words_00_19(arr) : arr.pop
    end

    def words_00_19(arr)
      $answer << NUMS_00_19[arr.pop.to_i]
    end

    def controller(arr)
      if arr.reverse.join.to_i < 20
        if arr.size != 0
          $answer << NUMS_00_19[arr.reverse.join.to_i]
        end

      elsif arr.length < 3
        words_20_90(arr)

      elsif arr.length == 3
        if arr.last != 0   # i.e. [0, 0, 1]
          hundreds = NUMS_00_19[arr.pop]
          $answer << "#{hundreds}" << "hundred"   # $answer = ["one", "hundred"]
        else    # i.e. [0, 1, 0]
          arr.pop
          controller(arr)
        end
        if arr.last(2) != [0, 0]
          controller(arr)
        end

      elsif arr.length > 3
        parse_num(arr)
      end
    end

    controller(num_arr)
    return $answer.join(" ")
  end
end
