  require 'pry'
  def my_find_index(array, num = nil)
    if block_given?
      (0...array.length).each do |i|
        return i if yield(array[i])
      end
    elsif num
      (0...array.length).each do |i|
        return i if array[i] == num
      end
    end
  end

  def my_select(array)
    results_array = []
    (0...array.length).each do |i|
      if yield(array[i])
        results_array << array[i]
      end
    end

    return results_array
  end

  def my_reject(array)
    results_array = []
    (0...array.length).each do |i|
      unless yield(array[i])
        results_array << array[i]
      end
    end

    return results_array
  end

  def my_map(array)
    results_array = []
    (0...array.length).each do |i|
      results_array << yield(array[i])
    end

    return results_array
  end

numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']
binding.pry

