# require 'pry'

def valid_ip(string)
  string.split('.').each {|num|
    if num.to_i > 255 || num.to_i < 0
      return false
    end
  }
  return true
end

# binding.pry
