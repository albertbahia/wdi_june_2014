# coll_creator.rb
# june 17
# khadijah

def convert_to_hash(arr)
	new_hash = {}
	arr.each do |element|
   	if element.length == 2
   		new_hash[element.first] = element.last
   	elsif element.length == 1
   		new_hash[element.first] = nil
   	elsif element.length > 2
   		new_hash[element.first] = element[1..-1]
   	end
	end
return new_hash

	#arr.each do |element|
	#	new_hash[element.first] = nil
	#end
end
