def valid_ip(ip)
  ip.split('.').map(&:to_i).select {|num| (0..255).include?(num)}.count == 0
end

puts GC.stat[:count]
