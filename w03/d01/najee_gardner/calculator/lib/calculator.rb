class Calculator

  def initialize
    @current_number = nil
    @operation = nil
  end

  [{one: 1}, {two: 2}, {three: 3}, {four: 4}, {five: 5}, {six: 6}, {seven: 7}, {eight: 8}, {nine: 9}, {ten: 10}].each do |number|
	  define_method("#{number.keys.first}") do
			# num = 0
      # case number
      # when "one" then num = 1
      # when "two" then num = 2
      # when "three" then num = 3
      # when "four" then num = 4
      # when "five" then num = 5
      # when "six" then num = 6
      # when "seven" then num = 7
      # when "eight" then num = 8
      # when "nine" then num = 9
      # when "ten" then num = 10
      # end

      case @operation
      when nil
        @current_number = number.values.first
        self
      when :minus
        @current_number - number.values.first
      when :plus
        @current_number + number.values.first
      when :multiply
        @current_number * number.values.first
      when :divide
        @current_number / number.values.first
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
