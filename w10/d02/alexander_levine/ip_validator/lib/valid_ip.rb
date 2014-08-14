require 'pry'

def valid_ip(string)
  number_string_array = string.split('.')
  number_string_array.each do |number|
    if number.to_i > 255 || number.to_i < 0
      return false
    end
  end
  return true
end

def calculate_heap_mb
  mb = GC.stat[:heap_length] * (2 << 13).to_f / (2 << 19)
  puts "Ruby has allocated #{mb}mb to heaps in this program!"
end

binding.pry
