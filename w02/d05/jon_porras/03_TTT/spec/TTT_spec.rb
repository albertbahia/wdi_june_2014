require_relative '../lib/TTT.rb'


describe '#player_input' do

  it 'asks for input' do
    #get_input_odd()= ['x'|'y']
    expect(player_input("A1")).to eq("A1")
  end

# it 'works for stringified numbers' do
#   num_array = ["1","2","3","4","5","6"]
#   expect(rejector(num_array)).to eq(12)
# end


# it'accepts exact location in terms of which row and which column eg. 0,1 or 1,1
# expect(num_array=[0,0]= ['x'|'y'])




end
