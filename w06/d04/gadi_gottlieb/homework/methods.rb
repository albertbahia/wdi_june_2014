numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']

#############################
# find the index of the     #
# first 'what' in the array #
# of duplicate strings      #
#############################

def find_index(array)
  i = 0
  index = nil
  while i < array.size
    if yield(array[i])
      index = i
      return index
      break
    else
      i += 1
    end
  end
end

find_index(strings) {|x| x == "is" }

#########################################
# select only even numbers from an array#
#########################################

def select(array)
  i = 0
  new_array = []
  while i < array.length do
    if yield(array[i])
      new_array.push(array[i])
    end
    i += 1
  end
  return new_array
end

select(numbers) { |number| number.even? }

#############################################
# reject strings longer than two characters #
#############################################

def reject(array)
  i = 0
  new_array = []
  while i < array.length do
    if !yield(array[i])
      new_array.push(array[i])
    end
    i += 1
  end
  return new_array
end

reject(duplicate_strings) { |string| string.length > 2 }

################################################
# map across an array and add 5 to each number #
################################################

def map(array)
  i = 0
  new_array = []
  while i < array.size
    new_array.push(yield(array[i]))
    i += 1
  end
  return new_array
end

map(numbers) do |number|
  number + 5
end
