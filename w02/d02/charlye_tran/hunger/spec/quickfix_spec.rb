require_relative '../lib/quickfix.rb'

describe QuickFix do
  let(:sally) { QuickFix.new('Sally', 'student', 'New Orleans', 'McDonalds') }
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

  it "has a favorite fast food chain" do
    expect(sally.fav_restaurant).to eq('McDonalds')
  end
end

describe "#vist_restaurant" do
  let(:sally) { QuickFix.new('Sally', 'student', 'New Orleans', 'McDonalds') }

  it "should expect Sally's available calorie intake to decrease by calories consumed" do
  expect(sally.visit_restaurant(500)).to eq(1500)
  end

  it "should display calories available and favorite restaurant." do
  expect(sally.calories_stat).to include(sally.calories)
  expecc(sally.calories_stat).to include(sally.fav_restaurant)
  end

end
