def ordinator(num)
	last_num = num % 10  
	case 
	when last_num == 1
	 	num.to_s + "st"
	when last_num == 2
		num.to_s + "nd"
	when last_num == 3
		num.to_s + "rd"	
	when last_num >= 4 && last_num <= 10 
		num.to_s + "th"		
	end
	
end 