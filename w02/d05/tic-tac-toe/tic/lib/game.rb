#class Game


  def winner(positions) #positions = "79354"
    winnable_positions = ["123", "456", "789", "147",
      "258", "369", "159", "357"]
    winnable_positions.each do |winning_combo|
      winning_combo = winning_combo.split("") #winnig_combo = ["1", "2", "3"]
      if positions.include?(winning_combo[0]) &&
        positions.include?(winning_combo[1]) &&
        positions.include?(winning_combo[2])
        return true
      end# if
    end# each
    false
  end# method
#   x = "79356"
#   o = ""
#
#
# winner(x)
# winner(o)
#end
def validate_position(positions, num)
  !(positions.include? num)
end
