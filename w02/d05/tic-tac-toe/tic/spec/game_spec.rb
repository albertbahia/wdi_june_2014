require_relative('../lib/game.rb')

#describe Game do
describe '*~* winnable' do
  it '79356 should be a valid winnable set' do
    expect(winner("79356")).to eq(true)
  end
  it '123 should be a valid winnable set' do
    expect(winner("14529")).to eq(true)
  end

  it 'empty positions should be false' do
    expect(winner("")).to eq(false)
  end

  it '79356 should be a valid winnable set' do
    expect(winner("1793")).to eq(false)
  end
end


describe '*~* validate_position' do
  it 'position is valid if not in positions string' do
    expect(validate_position("4826","5")).to eq(true)
  end
it 'position is not valid if in positions string' do
  expect(validate_position("48265","5")).to eq(false)
  end
end

#end
