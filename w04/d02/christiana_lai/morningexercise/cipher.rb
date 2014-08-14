require 'pry'

def encode(input_string)
  return input_string.tr("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm")
end
#
# #tr(from_str, to_str) => new_str
# #returns a copy of wtv we put into value from from_str to the to_str
#

def encode(input_string)
  return input_string.tr("a-z", "n-za-m")
end

binding.pry
