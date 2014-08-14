def valid_ip(ip)
  # ip --> '127.0.0.1'
  # break up the ip into 4 elements
  # make sure those elements are numbers
  # check if all their values lie in a range
  #    if they all do return true
  #    if even one does not return false

  # ONE WAY TO SOLVE THE PROBLEM!!!!
  # valid = true
  #
  # ip_nums = ip.split('.').map do |el|
  #   el.to_i
  # end
  # ip_nums.each do |num|
  #   if num > 255 || num < 0
  #     valid = false
  #   end
  # end
  # valid

  # SECOND WAY TO SOLVE!
  ip.split('.').map(&:to_i).select{|x| x.between?(0,255) }.count == 4
end



# def valid_ip(ip_address)
#   low_ip = '0.0.0.0'
#   high_ip = '255.255.255.255'
#   low_ip.split('')
#
#   if ip_address >= '0.0.0.0' && ip_address <= '255.255.255.255'
#     true
#   else
#     false
#   end
# end
