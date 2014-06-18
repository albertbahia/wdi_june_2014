loop do

  puts("Welcome to HAMta")
  puts("Please select a train")
  puts("Type L for The L Train.")
  puts("Type N for The N Train.")
  puts("Type S for The Six train")
  puts("Type in quit to exit")
  puts ("Please select a letter")

  user_input = gets().chomp()
  user_input.downcase!

  if user_input == "l"
    puts ("You selected the L Train.")
    puts ("The L train stops at 8th. Ave. \n6th Ave. \nUnion Square \n3rd Ave. \n1st Ave. \nand Bedford Ave.")
  elsif user_input == "n"
    puts("You selected the N Train.")
    puts("The N train stops at Time Square \nHerald Square \n28th St. \n 23rd St - HAMco Terminal \nUnion Square \n and8th St.")
  elsif user_input == "s"
    puts("You selected the Six Train")
    puts("The six train stop at Grand Central \n33rd St. \n28th St. \n23rd St. \nUnion Square \nand Astor Place.")
  elsif user_input == "quit"
    puts "Thank you have a good day"
    exit
  else
    puts "That is an invalid input!"
end
