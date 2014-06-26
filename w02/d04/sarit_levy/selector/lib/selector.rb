
def selector(limit)
  (1...limit).select { |number| number % 3 == 0 || number % 5 == 0 }.reduce(:+)
end

#the way the method reads here, ther is no limit right now.  If want to define a limit,
#create limit definition:

#puts selector(1000)  - inserting this puts below the selector method block above will limit the results to 1000.
