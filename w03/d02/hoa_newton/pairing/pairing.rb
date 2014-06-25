
def ordinator(num)
	case num.to_s.split('').last.to_i
	when 1
		return "#{num}st"
	when 2
		return "#{num}nd"
	when 3
		return "#{num}rd"
	else
		return "#{num}th"
	end
end