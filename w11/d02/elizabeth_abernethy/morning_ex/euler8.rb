# 1,000 digit number:
number = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

# 4 ADJACENT digits with greatest product are 9 x 9 x 8 x 9 = 5832
# Find 13 ADJACENT digits that have the greatest product. What is this value?

# PSEUDOCODE :
# 1) Break long number into individual numbers
# 1a) make a counter = 0
# 1b) make a current_product = 0
# 1c) make current_digits = []
# 2) Loop through the 1,000 digit number with counter @ 0
# 2a) make new_product = 0
# 3) get first 13 numbers (start at index 0), find their product: set = new_product
# 4) increase counter by 1 and re-loop
# 5) if new_product > current_product, set current_product = new_product
#     AND push 13 digits into current_digits array
#       else, move on


def greatest_product(number)
  big_counter = 0

  # Split large number into individuals strings, map > convert back to integers
  numbers = number.to_s.split('').map(&:to_i)

  # Big loop: Iterate through the entire set of numbers
  while big_counter <= numbers.length - 12 do
    # Get sets of 13 numbers
    all_numbers_array.each do |number|
      set_counter = 0
      current_product = 0
      current_number_set = []
      current_num = all_numbers_array[number]


    ######### NOT FINISHED !
    
    end
  end
end


# --------------------- NAJEE GARDNER ------------------------

def find_greatest_product(number)
  numbers = number.to_s.split('').map(&:to_i)
  greatest_product_numbers = [0]

  numbers.each_with_index do |number, i|
    if i + 12 < numbers.count
      counter = 0
      numbers13 = []

      while counter < 13
        numbers13 << numbers[i + counter]
        counter += 1
      end

      greatest_product_numbers = numbers13 if numbers13.reduce(:*) > greatest_product_numbers.reduce(:*)

    end
  end

  greatest_product_numbers.reduce(:*)
end


# ------------------- SEAN TALIA ------------------------------

def greatest_product(num, substring_length)
  num = num.gsub(" ", "")
  num = num.gsub("\n", "")
  max_product = 1
  for i in 0...(num.length-substring_length)
    product = num[i, substring_length].split('').map(&:to_i).reduce(&:*)
    max_product = product if product > max_product
  end
  return max_product
end



# ------------------- MCKENNETH  ------------------------------

# Keep track of greatest value ( max_num )
# Keep track of where I am in the array ( i )

max_num = 0
i = 0

while i < number.length - 12
  # Get rid of zeros: if anything is multiplied by 0 = 0
  if !number[i..i+12].include?('0')
    # If no 0 if present, take them, split them > to_integer > multiply them
    product = number[i..i+12].split('').map(&:to_i).reduce(:*)
    # If product > max_num, then set it equal to new max_num
    max_num = product if product > max_num
  end
  i += 1
end
