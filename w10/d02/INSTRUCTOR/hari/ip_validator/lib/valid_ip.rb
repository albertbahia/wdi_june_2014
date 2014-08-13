def valid_ip(ip)
  ip.split('.').map(&:to_i).select { |x| x >= 0 && x < 256 }.length == 4
end
