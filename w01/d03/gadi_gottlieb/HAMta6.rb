menu = ["Type 1 for the list of trains.", "Type 2 for stations for a single train line", "Type 3 to calculate the length of a trip.", "Type 4 to quit the program."]

train_list2 = {
  :l => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave", "Bedford Ave"],
  :n => ["Times Square", "Herald Square", "28th St", "23rd St - HAMco Terminal", "Union Square", "8th St"],
  :six => ["Grand Central", "33rd St", "28th St", "23rd St", "Union Square", "Astor Place"]
}

loop do
    puts("---------------------Menu---------------------")
    puts(menu)

    input = gets().chomp()

    if input == "1"
      puts("The subway lines are:")
      train_list2.each do |train_name, train_stops|
        puts("The #{train_name.capitalize} Train")
      end
  #-------------------------------------------------------------------
    elsif input == "2"
      puts("Please select a train line using the respective letters:")
      input2 = gets().chomp()
      train_stops = train_list2[input2.to_sym]
      puts train_stops
  #-------------------------------------------------------------------
    elsif input == "3"
      puts("What train are you getting on?")
      train_list2.each do |train_name, train_stops|
        puts("The #{train_name.capitalize} Train?")
      end
      input3 = gets().chomp()
      puts("What stop are you getting on at?")
      entry_train = train_list2[input3.to_sym]
      puts entry_train

      input4 = gets().chomp()
      train_list2[train_line_name].index(station_name)


  #-------------------------------------------------------------------
    elsif input == "4"
      puts("You have just exited the program.")
    exit
    else
    puts("Not a valid command! Try again.")
    end
end
