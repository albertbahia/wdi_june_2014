system "clear"
secs = ARGV[0].to_i
current = 1
puts current

secs.times do
	sleep(1)
	current += 1
	system "clear"
	puts current
	if current == secs
		exit
	end
end
