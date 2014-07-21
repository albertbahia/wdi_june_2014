numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']



def find_index(array)
  i = 0
  while i < array.length
    if yield(array[i])
      return i
    end
    i += 1
  end
end

find_index(duplicate_strings) do |something|

  something == "what"

end


def my_select(array)
  new_array = []
  i = 0

  while i < array.length
    if yield(array[i])
      new_array << array[i]
    end
    i += 1
  end
  return new_array
end

my_select([1,2,3,4,5,6]) do |something|

  something.even?

end


def my_reject(array)
  new_array = []
  i = 0

  while i < array.length
    unless yield(array[i])
      new_array << array[i]
    end
    i += 1
  end
  return new_array
end


my_reject(strings) do |something|

    something.length > 2

end


def my_map(array)
  new_array = []
  i = 0
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  return new_array
end

my_map(numbers) do |something|

  something + 5

end
