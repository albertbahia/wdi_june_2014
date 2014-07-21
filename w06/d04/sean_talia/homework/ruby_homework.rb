require 'pry'

numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']

################################################################################

def my_find_index(array, obj = nil)
  index = 0
  if obj != nil
    for i in 0..n
      if array[i] == obj
        return i
        break
      end
    end
  elsif
    while index < array.length
      return index if yield(array[index])
      index += 1
    end
  end
  return "No such element"
end

my_array = ["a", "b", "c", 1, 2, 3]

puts my_find_index(duplicate_strings) { |str| str == "what" }

################################################################################

def my_select(array)
  i = 0
  return_array = []
  while i < array.length
    if yield(array[i])
      return_array.push(array[i])
    end
    i+=1
  end
  return_array
end

puts my_select(numbers) { |el| el.even? }

################################################################################

def my_reject(array)
  i = 0
  return_array = []
  while i < array.length
    if !yield(array[i])
      return_array.push(array[i])
    end
    i+=1
  end
  return_array
end

puts my_reject(strings) { |str| str.length > 2 }

################################################################################

def my_map(array)
  i = 0
  while i < array.length
    array[i] = yield(array[i])
    i += 1
  end
  array
end

puts my_map(numbers) {
 |x| x+5
}
