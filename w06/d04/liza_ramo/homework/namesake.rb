numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']


def my_find_index(array)
  counter = 0
  while counter < array.size
    if yield(array[counter])
      return counter
    end
    counter += 1
  end
end

my_find_index(duplicate_strings) do |value|
  value == "what"
end

# return the index of the first "what" in the array strings

# def my_find_index(duplicate_strings)
#   i = 0
#   while i < duplicate_strings.size
#     if duplicate_strings[i] == 'what'
#       return i
#     end
#     i += 1
#   end
# end

###############################################
 # SELECT

def my_select(array)
  counter = 0
  new_array = []
  while counter < array.size
    if yield(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

my_select(numbers) do |number|
  number.even?
end

###############################################
# REJECT WITH BLOCK

def my_reject(array)
  counter = 0
  new_array = []
  while counter < array.size
    if yield(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

my_reject(strings) do |string|
  string.length <= 2
end

###########
# REJECT WITH PROC

def my_reject(array, proc_to_run)
  counter = 0
  new_array = []
  while counter < array.size
    proc_to_run.call(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

rejector = Proc.new { |string| string.length <= 2 }

# To run:
my_reject(strings, rejector)

###########
# REJECT WITH LAMBDA

def my_reject(array, lambda_to_run)
  counter = 0
  new_array = []
  while counter < array.size
    lambda_to_run.call(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

lambda_rejector = -> { |string| string.length <= 2 }

# To run:
my_reject(strings, lambda_rejector)

##############################################################################################
# Map
# Map across the array and add 5 to each number

numbers = [1,2,3,4,5,6]

def my_map(array)
  counter = 0
  new_array = []
  while counter < array.size
    yield
    new_array << array[counter] + 5
    counter += 1
  end
  return new_array
end

my_map(numbers) do
end











































def map
end
