require_relative('../lib/hart.rb')

describe Hart do
  let(:hart) {Hart.new("Martin Eric Hart", "Marty", "Detective")}
  it 'has a name' do
    expect(hart.name).to eq("Martin Eric Hart")
  end

  it 'has a nick name' do
    expect(hart.nick_name).to eq("Marty")
  end

  it 'have an occupation' do
    expect(hart.occupation).to eq("Detective")
  end

  it 'is married' do
    expect(hart.married).to eq(true)
  end

  describe '#introduce' do
    it 'introduces Hart' do
    expect(hart.introduce).to include(hart.name)
    expect(hart.introduce).to include(hart.nick_name)
    end
  end

  describe '#promoted' do
    it 'promotes Hart' do
      hart.promoted
    expect(hart.occupation).to eq("Sergeant")
    end
  end

  describe '#justify' do
    it 'justifies Harts actions' do
    expect(hart.justify).to include("A man’s game charges a man’s price")
    end
  end

end
