numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']

# Index

def find_index(string)
  i = 0
  while i < array.length do
    index = yield array[i]
  end
  puts index
end

# MAP

def my_map(array)
  i = 0
  while i < array.length do
    new_array = yield array[i]
    i += 1
  end
  puts new_array
end

array = [1,2,3,4,5,6]

my_map(array) do |num|
  puts num + 5
end

# SELECT

def my_select
  new_array = []
  self.each do |x|
    new_array << x if yield(x)
  end
  new_array
end

numbers.my_select { |x| x % 2 == 0 }

# REJECT

def my_reject
  new_array = []
  self.each do |x|
    new_array << x unless yield(x)
  end
  new_array
end

strings = ['Hi','my','name','is', 'Bob']

strings.reject { |x| x.length > 2 }
