=begin

Define a set of methods that will perform the following array methods:

+ find index   > find index of the first 'what' in the array of duplicate strings
+ select       > select only even numbers from an array
+ reject       > reject strings longer than 2 characters
+ map          > map across an array and add 5 to each number

=end

# ------------------ GIVEN ARRAYS ---------------------

numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']


# ------------------ FIND INDEX ---------------------


###### BLOCK VERSION

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


# ------------------ SELECT ---------------------

###### BLOCK VERSION

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


# ------------------ REJECT ---------------------

###### BLOCK VERSION

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



###### PROC VERSION

def my_reject(array, proc_to_run)
  counter = 0
  new_array = []
  while counter < array.size
    if proc_to_run.call(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

rejector = Proc.new { |string| string.length <= 2 }

# to run: my_reject(strings, rejector)

###### LAMBDA VERSION

def my_reject(array, lambda_to_run)
  counter = 0
  new_array = []
  while counter < array.size
    if lambda_to_run.call(array[counter])
      new_array << array[counter]
    else
    end
    counter += 1
  end
  return new_array
end

rejector_lambda = -> (string) { string.length <= 2 }


# ------------------ MAP ---------------------


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
