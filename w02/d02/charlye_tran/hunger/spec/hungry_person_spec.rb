require_relative './food.rb'
let(:sally) { Hungry.new('Sally', 'student', 'New Orleans') }

describe HungryPerson do
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
    expect(sally.calorie).to eq(2000)
  end

  it "does not reduce calories below zero"
  end
do

describe '#eat' do
  it "reduces calorie intake by" do
  let(:sally) { Hungry.new('Sally', 'student', 'New Orleans') }
  expect(sally.eat(200)).to eq(1800)
  end

  it "does not reduce calorie intake into negative" do
  expect(sally.eat(2100)).to eq(0)
  end
end
