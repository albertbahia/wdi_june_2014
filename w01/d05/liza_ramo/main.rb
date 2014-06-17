require_relative './station'
require_relative './line'
require_relative './subway'

l_stations = [
  Station.new('8TH',['James','Jessie'], true, 5),
  Station.new('6TH',['Ike','Tina'], false, 4),
  Station.new('UNION SQUARE',['Whitney','Bobby'], true, 3),
  Station.new('3RD',['Thelma','Louise'], false, 2),
  Station.new('1ST',['Kobe','Shaq'], true, 1),
  Station.new('BEDFORD AVE',['Kobe','Shaq'], true, 1),
]
l_train = Line.new(:L, l_stations)

n_stations = [
  Station.new('TIMES SQUARE',['Mark','Chessa'], true, 5),
  Station.new('34TH ST',['Jimmy','Jackie'], false, 4),
  Station.new('28TH ST',['Hunter','Jay'], true, 3),
  Station.new('23RD ST',['Leigha','Courtney'], false, 2),
  Station.new('UNION SQUARE',['Kobe','Shaq'], true, 1),
  Station.new('8TH ST',['Kobe','Shaq'], true, 1)
]
n_train = Line.new(:N, n_stations)

stations = [
  Station.new('GRAND CENTRAL',['James','Jessie'], true, 5),
  Station.new('33RD ST',['Ike','Tina'], false, 4),
  Station.new('28TH ST',['Whitney','Bobby'], true, 3),
  Station.new('23RD ST',['Thelma','Louise'], false, 2),
  Station.new('UNION SQUARE',['Kobe','Shaq'], true, 1),
  Station.new('ASTOR PLACE',['Kobe','Shaq'], true, 1)
]
s_train = Line.new(:S, s_stations)


lines = [l_train, n_train, s_train]

def menu
  return [
    "Welcome to HAMta",
    "Choose 1 to view all stations",
    "Choose 2 to list stations for a single line",
    "Choose 3 to calculate the length of your trip",
    "Choose 4 to Quit"
      ].join("\n")
end

def prompt
  print '> '
end

loop do
  puts menu
  prompt
  choice = gets.chomp().to_i
  # case choice


  if choice == 1
    puts lines.list_name

  elsif choice == 2
    puts ("You've chosen to view stations for a single line.")
    puts ("Please choose a train line: ")
    puts (lines.list_name)
    puts "Enter L, N or S"
    line_choice = gets.chomp.upcase

    puts ("You have chosen the #{line_choice} line. Here is a list of stations for that line:")

    #List the stations for the chosen line
    puts (list.list_stations)

  elsif choice == 3

    if == same line
      # User chooses line
      # gets line on
      # gets line off



    elsif == transfer
      # User chooses line
      # User chooses station on
      # User chooses line to transfer to @Un Sq
      # User chooses line to get off at

      puts("To calculate your trip, enter which line you're getting on at: L, N or S:")
      line_on = gets.chomp.upcase

      puts("Which station of the #{line_on} are you gettong on at?")
      puts(#list stations for line_on)

      station_on = gets.chomp.upcase

      puts("")


    puts "To calculate your trip, enter which station you're getting on at:"
    prompt
    start_trip = gets.chomp
    puts "Where are you getting off?"
    prompt
    end_trip = gets.chomp
    trip_length = l_train.calculate_trip(start_trip,end_trip)

    if trip_length
      puts "Your trip is #{l_train.calculate_trip(start_trip,end_trip)} stop(s)"





    else
      puts "Please enter a valid option."
    end
  end

  elsif choice == 4
    puts "Thank you for riding the HAMta"
    break

  else
    puts "Please enter a valid option."
  end
end
