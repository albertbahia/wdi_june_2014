train_list = ["The L Train", "The N Train", "The Six Train"]
l_train_stations = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave", "Bedford Ave"]
n_train_stations = ["Times Square", "Herald Square", "28th St", "23rd St - HAMco Terminal", "Union Square", "8th St"]
s_train_stations = ["Grand Central", "33rd St", "28th St", "23rd St", "Union Square", "Astor Place"]

loop do
puts("Welcome to HAMta")
puts("Type 1 for the list of trains.")
puts("Type 2 for stations for a single train line")
puts("Type 3 to add another train line to the system")
puts("Type 4 to quit the program.")

puts("Please enter a number.")
input = gets().chomp()
puts("You entered")
puts(input)

  if input == "1"
    puts("The list of trains are: #{train_list}")

  elsif input == "2"
    puts("Please select a train")
    puts("----------------------------------------------")
    puts("The (L) Train, The (N) Train, The (S)ix Train.")
    puts("----------------------------------------------")
    puts("Please select the corresponding letters for each train.")
    puts("Type in quit to exit")

    user_input = gets().chomp()
    user_input.upcase!

    if user_input == "L"
    puts("You selected the #{user_input} Train.")
    puts("The L Train stops at: #{l_train_stations}.")
    elsif user_input == "N"
    puts("You selected the #{user_input} train.")
    puts("The N Train stops at: #{n_train_stations}.")
    elsif user_input == "S"
    puts("You selected the #{user_input}ix Train")
    puts("The Six Train stops at: #{s_train_stations}.")
    elsif user_input == "quit"
    puts "Thank you have a good day!"
    exit
    else
    puts "That is an invalid input."
    end

  elsif input == "3"
    puts("Please Select a Train Line in which you wish to add a stop:")
    puts("The (L) Train, The (N) Train, The (S)ix Train.")
    puts("Select the corresponding letters")

    user_input2 = gets().chomp()
    user_input2.upcase!

    if user_input2 == "L"
      puts("You selected the #{user_input2} Train.")
      puts("What stops would you like to add to The L Train?")
      l_train_stations.push(gets().chomp())
      puts(l_train_stations)
    elsif user_input2 == "N"
      puts("You selected the #{user_input2} train.")
      puts("What stops would you like to add to The N Train?")
      n_train_stations.push(gets().chomp())
      puts(n_train_stations)
    elsif user_input2 == "S"
      puts("You selected the #{user_input2}ix Train")
      puts("What stops would you like to add to The Six Train?")
    s_train_stations.push(gets().chomp())
      puts(s_train_stations)
    elsif user_input2 == "quit"
      puts "Thank you have a good day!"
      exit
    else
      puts "That is an invalid input."
    end

  else input == "4"
    puts "Goodbye!"
    exit
  end
end
