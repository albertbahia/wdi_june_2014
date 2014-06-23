
row_1 = ["Row 1", 1, 2, 3]
row_2 = ["Row 2", 1, 2, 3]
row_3 = ["Row 3", 1, 2, 3]

puts "Choose a row to modify."
puts "Enter: row_1, row_2, row_3:"

row_to_modify = gets.chomp

  if row_to_modify == "row_1"
    puts "Select one of the numbers in #{row_to_modify} to change to 'X'."
    puts "Enter 1, 2 or 3:"

    column_to_modify = gets.chomp.to_i

    def modify_row_1
      if column_to_modify == 1
        row_1.delete_if { |column| column == 1 }
        row_1.insert(column_to_modify, "X")

      elsif column_to_modify == 2
        row_1.delete_if { |column| column == 2 }
        row_1.insert(column_to_modify, "X")

      elsif column_to_modify == 3
        row_1.delete_if { |column| column == 3 }
        row_1.insert(column_to_modify, "X")
      end
    end
  end
