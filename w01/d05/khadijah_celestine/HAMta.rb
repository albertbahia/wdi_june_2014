# HAMta.rb
# June 13
# Khadijah

#################################################
def list_option
	puts "list"
end
#################################################
def view_option
	puts "view"
end
#################################################
def calc_option
	puts "calc"
end
#################################################
def quit_option
	puts "Thank you and Goodbye!"
	exit
end
#################################################
def invalid_option
	puts "invalid. come on son."
end

system "clear"
puts "#~" * 25
puts "Welcome! " * 5
puts "#~" * 25
puts
 
loop do
	puts "#{'*' * 10} Main Menu #{'*' * 10}"
	puts "1. List all train stations"
	puts "2. View stations for single train line" 
	puts "3. Calculate length of trip"
	puts "4. Quit"
 
	print "Select an option: "
	option = gets.chomp
 
	case option
	when "1"
		list_option
	when "2"
		view_option
	when "3"
		calc_option
	when "4"
		quit_option
	else
		invalid_option
	end
end

#@lines = [
#Line.new("L", [Station.new('8th Ave'), Station.new('6th Ave'), Station.new('Union Square'), Station.new('3rd Ave'), Station.new('1st Ave'), Station.new('Bedford Ave')]),
#Line.new("N", [Station.new('Times Square'), Station.new('Herald Square'), Station.new('28th St'), Station.new('23rd St - HAMco Terminal'), Station.new('Union Square', '8th St')]),
#Line.new("S", [ Station.new('Grand Central'), Station.new('33rd St'), Station.new('28th St'), Station.new('23rd St'), Station.new('Union Square'), Station.new('Astor Place')]),]

#l = Line.new("L", [Station.new('8th Ave'), Station.new('6th Ave'), Station.new('Union Square'), Station.new('3rd Ave'), Station.new('1st Ave'), Station.new('Bedford Ave')]),
st1 = Station.new('8th Ave')
st2 = Station.new('1st Ave')
#puts l.distance(st1, st2)
#puts l

