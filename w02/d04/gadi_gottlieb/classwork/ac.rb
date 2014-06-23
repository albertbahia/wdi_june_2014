puts "What is the current temp in the room?"
current_temp = gets.chomp.to_i
puts "What is the desired temp in the room?"
desired_temp = gets.chomp.to_i
puts "Is the AC working?"
working_ac = gets.chomp

if working_ac == "y"
  if current_temp > desired_temp
    puts "Turn on the AC please!"
  else
    #do nothing
  end
else
  if current_temp > desired_temp
    puts "Fix the AC its hot!!!!!!!!"
  else
    puts "Fix the AC whenever you have a chance."
  end
end
