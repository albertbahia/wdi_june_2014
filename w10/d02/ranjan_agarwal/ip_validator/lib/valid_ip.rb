require 'pry'
def valid_ip(ip)
	# break the ip into 4 elements
	# make sure those elements are numbers
	# check if all their values lie in a range
	# 	if they all do, true
	#  if even one does not, false
	valid = true

	ip_nums = ip.split('.').map do |el|
		el.to_i
	end
	ip_nums.each do |num|
		if num > 255 || num < 0
			valid = false
		end
	end
	# One line
	# ip.split('.').map(&:to_i).select {|x| x.between?(0,255)}.count == 4
	valid
end
ip = "10.10.10.10"
# binding.pry

