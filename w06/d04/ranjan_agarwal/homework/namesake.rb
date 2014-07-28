# find index
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']
def find_index(array)
  i = 0
  while i < array.size
    if yield(array[i])
      return i
    else
      i += 1
    end
  end
end

find_index(duplicate_strings) { |x| x == "what" }

# select
numbers = [1,2,3,4,5,6]
def select_array(array)
  return_array = []
  i = 0
  while i < array.size
    if yield(array[i])
      return_array << array[i]
    end
    i += 1
  end
  return_array
end

select_array(numbers) { |x| x.even? }


# reject
strings = ['Hi','my','name','is', 'Bob']
def reject(array)
  return_array = []
  i = 0
  while i < array.size
    if yield(array[i])
      return_array << array[i]
    end
      i+= 1
  end
  return_array
end

reject(strings) { |x| x.length <= 2 }

# Plus 5
numbers = [1,2,3,4,5,6]
def map(array)
  return_array = []
  i = 0
  while i < array.size
    if yield(array[i])
      return_array << array[i]
    end
      i+= 1
  end
  return_array
end

map(numbers) { |x| puts x + 5 }
