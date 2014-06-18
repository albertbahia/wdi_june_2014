require_relative('../lib/house.rb')
require_relative('../lib/human.rb')

describe House do
  let(:lannister) { House.new('Lannister', "A golden lion
    rampant on a crimson field", "Casterly Rock"[{:patriarch
    => "Tywin"}, {:daughter => "Cersei"}, {:eldest_son =>
    "Jamie"}, {:youngest_son => "Tyrion"}], "A Lannister
    always pays his debts!")

  it 'has a name' do
    expect(lannister.name).to(eq('Lannister'))
  end

  it 'has a sigil' do
    expect(lannister.sigil).to(eq('A golden lion rampant on a crimson field'))
  end

  it 'has a home' do
    expect(lannister.home).to(eq('Casterly Rock'))
  end

  it 'has a members' do
    expect(lannister.members.each_value.map.join(', ') ).to(eq('Tywin, Cersei, Jamie, Tyrion'))
  end

  it 'has a phrase' do
    expect(lannister.phrase).to(eq('A Lannister
    always pays his debts!'))

describe '#introduce' do
  let(:lannister) { House.new('Lannister', "A golden lion
    rampant on a crimson field", "Casterly Rock"[{:patriarch
    => "Tywin"}, {:daughter => "Cersei"}, {:eldest_son =>
    "Jamie"}, {:youngest_son => "Tyrion"}])

  it '#introduce' do
    expect(lannister.introduce).to(eq(' of House #{name} from #{home}. #{phrase}'))
  end
