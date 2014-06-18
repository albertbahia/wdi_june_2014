loop do
  puts("Welcome to HAMta")
  puts("Type 1 for the list of trains.")
  puts("Type 2 for stations for a single train line")
  puts("Type 3 to quit the program.")

  puts("Please enter a number.")
  input = gets().chomp()
  puts("You entered")
  puts(input)

  if input == "1"
      puts("The list of trains are: The L Train, The N Train, The Six Train.")

  elsif input == "2"
    puts("Please select a train")
    puts("Type L for The L Train.")
    puts("Type N for The N Train.")
    puts("Type S for The Six train")
    puts("Type in quit to exit")
    puts ("Please select a letter")

  user_input = gets().chomp()
  user_input.downcase!

    if user_input == "l"
      puts("You selected the L train.")
      puts("The L train stops at 8th Ave. \n6th Ave. \nUnion Square \n3rd Ave. \n1st Ave. \nand Bedford Ave.")
    elsif user_input == "n"
      puts("You selected the N train.")
      puts("The N train stops at Times Square \nHerald Square \n28th St. \n23rd St - HAMco Terminal \nUnion Square \nand 8th St.")
    elsif user_input == "s"
      puts("You selected the Six Train")
      puts("The Six train stops at Grand Central, \n33rd St., \n28th St., \n23rd St., \nUnion Square, \nand Astor Place.")
    elsif user_input == "quit"
      puts "Thank you have a good day!"
      exit
    else
      puts "That is an invalid input."
    end

  else input == "3"
  puts "Goodbye!"
  exit
  end
end
