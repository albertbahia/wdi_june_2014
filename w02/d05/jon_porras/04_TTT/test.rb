require 'pry'
def win_lose_draw (player_position_arr)
  winning_combo = ["012", "345", "678", "036", "147", "048", "246", "258"]
  #winning_combo = ["0152"]
  new_arr = player_position_arr.sort & winning_combo.split(',')
  winning_combo.reject {|combo| !player_position_arr.join.include?(combo)
}.map { |x| return x}
end
binding.pry
