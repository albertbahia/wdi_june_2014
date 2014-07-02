def rejector(arr)
	arr = arr.reject { |num| num.to_i.odd? }
	arr.reduce(:+)
end


def r2
	array.map {|num| num.to_
