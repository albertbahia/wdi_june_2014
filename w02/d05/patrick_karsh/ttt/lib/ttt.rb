
row_1 = ["row 1", 1, 2, 3] 
row_2 = ["row 2", 1, 2, 3]
row_3 = ["row 3", 1, 2, 3]

def modify_x(row, column)
	row.delete_at(column)
	row.insert(column, 'X')
end 

def modify_o(row, column)
	row.delete_at(column)
	row.insert(column, 'O')
end 

modify_o(row_2, 2)

