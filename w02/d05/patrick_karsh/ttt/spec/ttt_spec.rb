require_relative '../lib/ttt.rb'

describe '#board' do 
 
	 it 'should puts to the display' do 
	 	expect(board).to eq(['row 1', 1, 2, 3])
	 end 
end 

describe '#modify' do 

	it 'change a value in row 1' do 
		row_1 = ['row 1', 1, 2, 3]
		expect(modify(1)).to eq(['row 1', 'X', 2, 3])
	end 

end 
