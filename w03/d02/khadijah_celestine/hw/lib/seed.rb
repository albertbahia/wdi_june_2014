trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']
trainer_names.each do |d|
#puts [*0...trainer_names.length].sample
end

8.times do
	puts "$*" * 8
	trainer_names = trainer_names.shuffle
	puts trainer_names.pop

	trainer_ages = trainer_ages.shuffle
	puts trainer_ages.shuffle.pop

	trainer_hometown = trainer_hometown.shuffle
	puts trainer_hometown.shuffle.pop

	puts
end

puts "NEXT"
5.times do
	puts	trainer_names.shuffle.pop
	puts  trainer_names.join
end
