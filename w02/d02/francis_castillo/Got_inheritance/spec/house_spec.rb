require_relative('../lib/house.rb')
require_relative('../lib/human.rb')

describe House do
  let(:lannister) { House.new('Lannister', "Casterly Rock", "A golden lion rampant on a crimson field", "A Lannister always pays his debts!")}

  it 'has a house' do
    expect(lannister.house).to(eq('Lannister'))
  end

  it 'has a home' do
    expect(lannister.home).to(eq('Casterly Rock'))
  end

  it 'has a sigil' do
    expect(lannister.sigil).to(eq('A golden lion rampant on a crimson field'))
  end

  it 'has a phrase' do
    expect(lannister.phrase).to(eq('A Lannister always pays his debts!'))
  end

  it 'has a members' do
    lannister.add_member("Tyrion")
    lannister.add_member("Cersei")
    expect(lannister.members.length).to_not(eq(0))
  end

end
describe '#introduce' do
  let(:lannister) { House.new('Lannister', "Casterly Rock", "A golden lion rampant on a crimson field", "A Lannister always pays his debts!")}

  it '#introduce' do
    expect(lannister.introduce).to(include("#{lannister.house}"))
    expect(lannister.introduce).to(include("#{lannister.phrase}"))
    expect(lannister.introduce).to(include("#{lannister.home}"))
  end
end
describe '#add_member' do
  let(:lannister) { House.new('Lannister', "Casterly Rock", "A golden lion rampant on a crimson field", "A Lannister always pays his debts!")}
  arya = Human.new('Arya', 'Stark', 5)
  it '#add_member' do
    lannister.add_member("arya")
    expect(lannister.members).to(include("arya"))
  end
end
