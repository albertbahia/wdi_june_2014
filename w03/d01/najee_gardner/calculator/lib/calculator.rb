class Calculator

  def initialize
    @current_number = nil
    @operation = nil
  end

  ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"].each do |number|
	  define_method("#{number}") do
			num = 0
      case number
      when "one" then num = 1
      when "two" then num = 2
      when "three" then num = 3
      when "four" then num = 4
      when "five" then num = 5
      when "six" then num = 6
      when "seven" then num = 7
      when "eight" then num = 8
      when "nine" then num = 9
      when "ten" then num = 10
      end

      case @operation
      when nil
        @current_number = num
        self
      when :minus
        @current_number - num
      when :plus
        @current_number + num
      when :multiply
        @current_number * num
      when :divide
        @current_number / num
      end
  	end
  end

  ["plus", "minus", "multiply", "divide"].each do |operation|
    define_method("#{operation}") do
      case operation
      when "plus"
        @operation = :plus
        self
      when "minus"
        @operation = :minus
        self
      when "multiply"
        @operation = :multiply
        self
      when "divide"
        @operation = :divide
        self
      end
    end
  end
end
