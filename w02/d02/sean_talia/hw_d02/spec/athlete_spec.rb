require_relative('../lib/athlete.rb')

describe Athlete do
  let(:calvin) { Athlete.new('Calvin Johnson', 'Football', 'Detroit', 'Lions', 13000000) }
  it 'has a name' do
    expect(calvin.name).to eq('Calvin Johnson')
  end

  it 'has a sport' do
    expect(calvin.sport).to eq('Football')
  end

  it 'has a city' do
    expect(calvin.city).to eq('Detroit')
  end

  it 'has a team' do
    expect(calvin.team).to eq('Lions')
  end

  it 'has an income' do
    expect(calvin.income).to eq(13000000)
  end
  describe '#sign_endorsement' do
    it 'increases player income' do
      amount = 5000000
      new_income = calvin.income + amount
      calvin.sign_endorsement(amount)
      expect(calvin.income).to eq(new_income)
    end
  end

end
