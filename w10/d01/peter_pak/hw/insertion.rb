require 'pry'

array = (0..8).map{rand(1..20)}

def insertion_sort(arr)
  counter = 0
  (1..arr.length-1).each do |i|
    value = arr[i]                #for each element in array,
    j = i - 1
    while j >= 0 and arr[j] > value   #while the element before it is greater than it
      arr[j + 1] = arr[j]             # moving the element to the next spot
      j -= 1
      counter += 1
      puts "array: #{arr}"
      puts "counter: #{counter}"
    end
    arr[j + 1] = value
    counter += 1
    puts "array: #{arr}"
    puts "counter: #{counter}"
  end
  counter += 1
  puts "counter: #{counter}"
  arr
end

binding.pry
