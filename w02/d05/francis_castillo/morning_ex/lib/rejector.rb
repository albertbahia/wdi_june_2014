#require 'pry'
def rejector(arr)

  arr.reject {
    |rej| rej.to_i % 2 == 1
  }.map {|str| str.to_i }.reduce(:+)

end

# def rejector(arr)
#   arr.reject {
#     |rej| rej.to_i.odd?
#   }.reduce(0) {|sum, n| sum + n.to_i}
# end
#binding.pry
