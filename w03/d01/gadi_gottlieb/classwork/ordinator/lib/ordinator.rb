def ordinator(number)
  if number == 1
    return "1st"
  elsif number == 2
    return "2nd"
  elsif number == 3
    return "3rd"
  elsif number <= 20
    return "#{number}th"
  elsif number.to_s.split('').last.to_i == 1
    return "#{number}st"
  elsif number == 22
    return "#{number}nd"
  elsif number == 23
    return "#{number}rd"
  else
    return "#{number}th"
  end

end
