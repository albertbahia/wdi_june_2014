require 'pry'

winning_combos = [
[["a", "1"], ["b", "1"], ["c", "1"]],
[["a", "2"], ["b", "2"], ["c", "2"]],
[["a", "3"], ["b", "3"], ["c", "3"]],
[["a", "1"], ["a", "2"], ["a", "3"]],
[["b", "1"], ["b", "2"], ["b", "3"]],
[["c", "1"], ["c", "2"], ["c", "3"]],
[["a", "1"], ["b", "2"], ["c", "3"]],
[["c", "1"], ["b", "2"], ["a", "3"]]
]

player_one_arr = []
player_two_arr = []

def player_one_input(arr)

  puts("What is your move? (Ex. a-1)")
  move = gets.chomp.to_s

  move.split("-")

  arr.push(move)

end

def player_two_input(arr)

  puts("What is your move? (Ex. a-1)")
  move = gets.chomp.to_s

  move.split("-")

  arr.push(move)

end

player_one_input(player_one_arr)



binding.pry
