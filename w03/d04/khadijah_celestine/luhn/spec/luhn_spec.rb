require_relative '../lib/luhn'

describe 'luhn' do
  it "should return false for invalid numbers: 1234567890123456" do
		expect(valid_card?(1234567890123456)).to eq(false)
  end
  it "should return true for valid numbers: 38520000023237" do
		expect(valid_card?(38520000023237)).to eq(true)
  end
  it "should return true for valid numbers: 4222222222222" do
		expect(valid_card?(4222222222222)).to eq(true)
  end
  it "should return true for valid numbers: 4408041234567893" do
		expect(valid_card?(4408041234567893)).to eq(true)
  end
end

describe 'luhn2' do
  it "should return false for invalid numbers: 1234567890123456" do
		expect(valid_card2?(1234567890123456)).to eq(false)
  end
  it "should return true for valid numbers: 38520000023237" do
		expect(valid_card2?(38520000023237)).to eq(true)
  end
  it "should return true for valid numbers: 4222222222222" do
		expect(valid_card2?(4222222222222)).to eq(true)
  end
  it "should return true for valid numbers: 4408041234567893" do
		expect(valid_card2?(4408041234567893)).to eq(true)
  end
end
