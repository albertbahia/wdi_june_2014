
def ordinal(num)
  ord = ["st", "nd", "rd", "th"]
  num_check = num.to_s.split(//).map(&:to_i)

  if num_check.last == 1 && num_check[-2] != 1
    return num.to_s + ord[0]

  elsif num_check.last == 2 && num_check[-2] != 1
    return num.to_s + ord[1]

  elsif num_check.last == 3 && num_check[-2] != 1
    return num.to_s + ord[2]
    
  else
    return num.to_s + ord[3]
  end
end
