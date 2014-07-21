Define a set of methods, similar to how you defined the each method in class, that will perform the following array methods:

find_index
select
reject
map
The methods that you defined should perform exactly as their normal ruby counterparts would perform. To make sure that your methods are functional define blocks to test them using the guidelines below.

select only even numbers from an array
reject strings longer than two characters
find the index of the first 'what' in the array of duplicate strings
map across an array and add 5 to each number
numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']


def my_each(array)
  i = 0
  while i < array.count do
    yield(array[i])
    i += 1
  end
end

def my_map(array)
  i = 0
  output = []
  while i < array.length do
    output << yield(array[i])
    i += 1
  end
  return output
end

def my_index(array)
  i = 0
  while i < array.count do
    if yield(array[i])
      return i
    else
      i += 1
    end
  end
end

def my_select(array)
  i = 0
  new_array = []
  while i < array.count do
    if yield(array[i])
      new_array << array[i]
      i += 1
    else
      i += 1
    end
  end
  return new_array
end

def my_reject(array)
  i = 0
  new_array = array
  while i < array.count do
    if yield(array[i])
      new_array.delete(array[i])
      i += 1
    else
      i += 1
    end
  end
  return new_array
end
