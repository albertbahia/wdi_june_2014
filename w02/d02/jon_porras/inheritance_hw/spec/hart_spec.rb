require_relative('../lib/hart.rb')

describe Hart
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

  it 'is a smoker' do
    expect(hart.smokes).to eq (false)
  end

  describe '#introduce' do
    expect(hart.introduce).to include(hart.name)
    expect(hart.introduce).to include(hart.nick_name)
  end

  describe '#promoted' do
    expect(hart.promoted).to eq(hart.occupation == "Sergeant")
  end

  describe '#justify' do
    exect(hart.justify).to include("A man’s game charges a man’s price")
  end

end
