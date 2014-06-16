require 'pry'
class Subway
  attr_reader(:hamta, :lines )
  def initialize(hamta, lines)
    @hamta = hamta
    @lines = lines
  end

# def subway_system(list_of_lines)
#
#
# end

end


var = Subway.new("HAMta NYC",["N Train", "R Train", "L Train"])
binding.pry
