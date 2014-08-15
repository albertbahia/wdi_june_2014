def valid_ip(address)
  address.split('.').each do |num|
    if num.to_i < 0 || num.to_i > 255
      return false
    end
  end
  return true
end


# ip.split('.').map(&:to_i).select {|x| x.between?(0, 255)}.count == 4
