def valid_ip(ip)

  ip_to_check = ip.split(".")
  ip_size = ip_to_check.size
  ip_range_check = ip_to_check.select{|num| num.to_i <= 255 && num.to_i >= 0}

  ip_range_check.size != ip_size ? false : true

  #ip.split(".").map(&:to_i).select {|x| x.between?(0, 255) }.count == 4
end
