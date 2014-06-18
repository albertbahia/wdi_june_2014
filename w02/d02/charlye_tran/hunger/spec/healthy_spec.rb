require_relative '../lib/healthy.rb'

describe Healthy do
  let(:sally) { Healthy.new('Sally', 'student', 'New Orleans', 19) }
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

  it "has a BMI" do
    expect(sally.bmi).to eq(19)
  end
end

describe "#exercise" do
  let(:sally) { Healthy.new('Sally', 'student', 'New Orleans', 19) }
  it "increase calorie intake by 100 calories per minute exercised" do
  expect(sally.exercise(5)).to eq(2500)
  end

  it "has a max calorie intake of 5000" do
  sally.exercise(500)
  expect(sally.calories).to eq(5000)
 end
end
