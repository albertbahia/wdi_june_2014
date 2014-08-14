# def valid_ip(ip)
#   valid = true;
#   ipArr = ip.split(".");
#   if ipArr.length == 4
#     ipArr.each do |num|
#       if num.to_i > 255 || num.to_i < 0
#         valid = false
#       end
#     end
#   end
#   valid
# end
#


def valid_ip(ip)
  ip.split('.').map(&:to_i).select {|x| x.between?(0,255)}.count == 4
end

valid_ip('10.10.10.10');
