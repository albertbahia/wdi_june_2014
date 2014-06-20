# #require 'pry'
# winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [0,4,8], [2,4,6], [2,5,8]]
# class Board
# #
# #   def initialize(positions_array, num_of_turns)
# #
# #   end
# #
# #
# #
# # end
# # def board_pop
# # puts("______________________")
# # puts("|    |")
# # puts("|  x |")
# # puts("|____|")
# # puts("|    |")
# # puts("|#{x}|")
# # puts("|____|")
# #
# # end
# # require 'pry'
# # def win_lose_draw (player_position_arr)
# #   # winning_combo = ["012", "345", "678", "036", "147", "048", "246", "258"]
# #   winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [0,4,8], [2,4,6], [2,5,8]]
# #   return winning_combo.each { |combo| combo.split & player_position_arr}.join()
# #
# # end
# # # binding.pry
# def initialize(player)
#     @winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [0,4,8], [2,4,6], [2,5,8]]
#     @player = player
#
# end
#
# def player
#   @player
# end
#
# def winning_combo
#   @winning_combo
#
# end
require 'pry'
winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [0,4,8], [2,4,6], [2,5,8]]
def win_lose_draw (user_input,win_arr)
  # winning_combo = ["012", "345", "678", "036", "147", "048", "246", "258"]
  ltr = 'X'
  win_arr.each.with_index { |combo,x| combo.each.with_index {
    |num, y| if num == user_input
        win_arr[x][y] = ltr
    end
    }}

end
binding.pry
# end
