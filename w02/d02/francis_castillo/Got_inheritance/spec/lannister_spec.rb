require_relative('../lib/lannister.rb')
require_relative('../lib/house.rb')
require_relative('../lib/human.rb')


describe Lannister do
  let(:tywin) { Lannister.new('Tywin', 'Patriarch', 1000) }

  it 'has a name' do

  end

  it 'has a sigil' do

  end

  it 'rank' do
    expect(tywin.rank).to(eq('Patriarch'))
  end
  it 'has a home' do

  end

  it 'has members' do

  end

  it 'has gold_pieces' do
    expect(tywin.gold_pieces).to(eq(1000))
  end
  it 'has a phrase' do
    expect(tywin.phrase).to(eq('A Lannister always pays his debts!'))
  end
end
describe '#introduce' do
  let(:tywin) {Lannister.new('Tywin', 'Patriarch', 1000)}
  let(:tyrion) {Lannister.new('Tyrion', 'Youngest son', 100)}
  let(:sam) {Human.new('Sam', 'Watch', 10)}
  it '#introduce' do

  end

  it '#borrow_from_iron_bank' do
    original_gold = tywin.gold_pieces
    tywin.borrow_from_iron_bank(100)
    expect(tywin.gold_pieces).to(eq(
    original_gold + 100))
  end

  it '#return can\'t borrow from bank' do
    tyrion.borrow_from_iron_bank(100)
    expect(tyrion.borrow_from_iron_bank(100)).to(eq(false))
  end
  it '#pay_assassins' do
    original_gold = tywin.gold_pieces
    tywin.pay_assassins(10, sam)
    expect(sam.hp).to(eq(0))
    expect(tywin.gold_pieces).to(eq(original_gold - 10))
  end
end
