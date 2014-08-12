# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between `0.0.0.0` and
# `255.255.255.255` is valid).


# ip --> '127.0.0.1'
# break up the ip into 4 elements
# make sure those elements are numbers
# check if all of their values live in the correct range
#   if they all do, return true
#   if even one does NOT, return false


def valid_ip(ip)

  valid = true

  ip_nums = ip.split('.').map do |el|
    el.to_i
  end

  ip_nums.each do |num|
    if num > 255 || num < 0
      valid = false
    end
  end

  valid
end



# ----------- ANOTHER WAY TO SOLVE IT

def valid_ip(ip)
  ip.split('.').map(&:to_i).select {|x| x.between?(0,255) }.count == 4
end
