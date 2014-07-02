def ordinal(num)
  if num > 20
    prefix = num / 10
    num = num % 10
  end

  if num == 1
    suffix = "st"
  elsif num == 2
    suffix = "nd"
  elsif num == 3
    suffix = "rd"
  else
    suffix = "th"
  end
  prefix.to_s + num.to_s + suffix
end
