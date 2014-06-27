require_relative '../lib/calculator'

describe Calculator do
  subject(:calculator){ Calculator.new }

  describe "#add" do
    it "adds two positive numbers" do
      expect(calculator.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(calculator.add(-1, 2)).to eq(1)
    end
  end

  describe "#subtract" do
    it "subtracts numbers" do
      expect(calculator.subtract(11, 7)).to eq(4)
    end
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(calculator.sum([])).to eq(0)
    end

    it "computes the sum of an array of one number" do
      expect(calculator.sum([7])).to eq(7)
    end

    it "computes the sum of an array of two numbers" do
      expect(calculator.sum([7, 11])).to eq(18)
    end

    it "computes the sum of an array of many numbers" do
      expect(calculator.sum([7, 11, 12, 10])).to eq(40)
    end
  end

  describe "#multiply" do

    it "multiplies two numbers" do
      expect(calculator.multiply(2, 2)).to eq(4)
    end
    
    it "multiplies several numbers" do
      expect(calculator.multiply(2, 2, 2, 3)).to eq(24)
    end

  end
end