require_relative './station.rb'
require_relative './line.rb'
require_relative './subway.rb'

# ----- Data Collections

Subway.new(HAMta = {
  :L => [l_stations[0..3],
  :N => [n_stations[0..3],
  :S => [s_stations[0..3],
})

l_train = Line.new(:L, stations)
n_train = Line.new(:N, stations)
s_train = Line.new(:S, stations)

n_stations = [
  Station.new('Times Square', ['Thomas', 'Tina'], true, 3),
  Station.new('Herald Square', ['Stephen'], false, 4),
  Station.new('28th Street', ['Jessica', 'Tiffany'], true, 5),
  Station.new('23rd Street - HAMCo', ['Chad', 'Liz'], false, 6)
  Station.new('Union Square')
]

l_stations = [
  Station.new('8th Avenue',['Eric', 'Emily', 'Elise'], true, 5),
  Station.new('6th Avenue',['Steph', 'Sarah'], false, 4),
  Station.new('Union Square'.['Ursala'], true, 3),
  Station.new('3rd Avenue',['Theresa', 'Timmy', 'Thor'], false, 2),
  Station.new('1st Avenue',['Francesca', 'Faith'], true, 1),
]

# ----- Methods

  def headings(title)
    puts("*" * 50)
    puts(title)
    puts("*" * 50)
  end

  def main_menu
    return [
      "Welcome to HAMta!",
      "Choose ( 1 ) to view all available HAMta lines",
      "Choose ( 2 ) to view the stations for a single HAMta line",
      "Choose ( 3 ) to calculate the length of your trip",
      "----> Choose ( 4 ) to quit the program."
      ]

  def prompt_user
    puts("What would you like to do?:")
    puts (">")
  end

# ----- MAIN MENU

loop do

  puts headings("Main Menu")
  puts(main_menu)
  puts prompt_user

    menu_choice = gets().chomp().to_i

  if menu_choice == 1
    puts

  elsif menu_choice == 2

  elsif menu_choice == 3

  elsif menu_choice == 4
    puts("Goodbye! Thank you for choosing the HAMta!")
    exit
  else
    puts("Please choose a valid menu option.")
  end
end
end
