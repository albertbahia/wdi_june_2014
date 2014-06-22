
File.open("tic_tac_toe.sql","w") do |file|
  file.puts("TRUNCATE TABLE tic_tac_toe CASCADE;")

tic_tac_toe.each do |b|
  file.puts("INSERT INTO tic_tac_toe (null, null) VALUES ('#{user_row}','#{user_coloumn}');")
end
tic_tac_toe.each do |b|
  file.puts("INSERT INTO tic_tac_toe (user_row, user_coloumn) VALUES ('#{user_row}','#{user_coloumn}');")
end
tic_tac_toe.each do |b|
  file.puts("INSERT INTO tic_tac_toe (user_row, user_coloumn) VALUES ('#{user_row}','#{user_coloumn}');")
end

puts "Welcome to tic tac toe."
puts "player X please enter a row"
user_row = gets.chomp
puts "player X please enter a coloumn"
user_coloumn = gets.chomp


  tic_tac_toe.each do |b|
    file.puts("INSERT INTO tic_tac_toe (user_row, user_coloumn) VALUES ('#{user_row}','#{user_coloumn}');")
  end
