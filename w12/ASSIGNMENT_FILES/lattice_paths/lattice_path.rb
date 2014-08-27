require 'pry'
def factorial(num)
  num > 0 ? (1..num).reduce(:*) : 1
end

def find_row(n)
  (0..n).map {|k| factorial(n) / (factorial(k) * factorial(n - k))}
end

def lattice_path(grid_size)
  find_row(grid_size * 2).max
end