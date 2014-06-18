require_relative('../lib/stark.rb')
require_relative('../lib/human.rb')

describe Stark do
  let(:ned) {Stark.new('Ned', 'Patriarch', 1000)

  it 'has a name' do

  end

  it 'has a sigil' do

  end

  it 'rank' do
    expect(ned.rank).to(eq('Patriarch'))

  it 'has a home' do

  end

  it 'has members' do

  end

  it 'has sword_skils' do
    expect(ned.sword_skilss).to(eq(1000))

  it 'has a phrase' do
    expect(ned.phrase).to(eq('Winter is coming!!'))

describe '#introduce' do
  let(:ned) {Stark.new('Ned', 'Patriarch', 1000)
  let(:rob) {Stark.new('Rob', 'Eldest son', 750)
  let(:sam) {Human.new('Sam', 'Watch', 10)
  it '#introduce' do

  end

  it '#spar' do
    original_hp = rob.hp
    ned.spar(rob)
    expect(rob.hp).to(eq(original_hp - 1))
  end

  it '#add_beast' do
    rob.add_beast("Grey Wind")
    expect(rob.beast).to(eq('Grey Wind'))
