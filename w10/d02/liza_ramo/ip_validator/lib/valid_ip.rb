
def valid_ip(ip)  # "10.10.10.10"

  # Divide string into four numbers in array
  # Identify new num for every decimal
  # array = [255, 255, 255, 255]
  # Loop: check that each element in the array is between 0 - 255
  # If so, return true.

  # ip is true until proven false
  # If ip is true, it'll never enter line 21

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

  # or:
  # ip.split('.').map(&:to_i).select {|x| x.between?(0, 255)}.count == 4

end
