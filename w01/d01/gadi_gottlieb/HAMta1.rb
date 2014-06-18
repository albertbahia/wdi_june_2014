puts("Welcome to HAMta")
puts("Please select a train")
puts("Type L for The L Train.")
puts("Type N for The N Train.")
puts("Type S for The Six train")


puts ("Please select a letter")
user_input = gets().chomp()
train = user_input.capitalize!()
puts("You selected the #{user_input} train.")
