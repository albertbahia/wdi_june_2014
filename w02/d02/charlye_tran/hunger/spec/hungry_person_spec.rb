require_relative '../lib/hungry_person.rb'


describe HungryPerson do
  let(:sally) { HungryPerson.new('Sally', 'student', 'New Orleans') }
  it "has a name." do
    expect(sally.name).to eq('Sally')
  end

  it "has an occupation." do
    expect(sally.occupation).to eq('student')
  end

  it "has a hometown" do
    expect(sally.hometown)
  end

  it "has a default calorie of 2000" do
    expect(sally.calories).to eq(2000)
  end
end

describe '#eat' do
  let(:sally) { HungryPerson.new('Sally', 'student', 'New Orleans') }

  it "reduces calorie intake by calorie amount" do
    expect(sally.eat(200)).to eq(1800)
  end

  it "does not reduce calorie intake into negative" do
    expect(sally.eat(2100)).to eq(0)
  end
end
