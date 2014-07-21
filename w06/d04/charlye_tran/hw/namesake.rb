def find_index(array)
  i = 0
  index = nil
  while i < array.length
    if yield(array[i])
      index = i
      return index
      break
    else
      i += 1
    end
  end
end

find_index(numbers) { |x| x == "what"}

def select(array)
  i = 0
  new_array = Array.new
  while i < array.length do
    if yield(array[i])
      new_array.push(array[i])
      i += 1
    else
      i += 1
    end
  end
  return new_array
end

select only even numbers from an array
numbers = [1,2,3,4,5,6]
select(numbers) { |number| number.even? }

def reject(array)
  i = 0
  new_array = Array.new
  while i < array.length do
    if yield(array[i])
      new_array.push(array[i])
      i += 1
    else
      i += 1
    end
  end
  return new_array
end

reject(strings) { |string| string.bytesize <= 2 }

reject strings longer than two characters
strings = ['Hi','my','name','is', 'Bob']

def my_map(array)
  i = 0
  new_array = Array.new
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end
  return new_array
end
