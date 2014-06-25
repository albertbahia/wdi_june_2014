require 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  let(:my_calc) { Calculator.new }

  describe '.new' do
    it 'can create new calculator objects' do
      my_calc = Calculator.new
      expect(my_calc.class).to eq(Calculator)
    end
  end

  describe '#one' do
    it "should return the same instance that is was called on" do
      expect(my_calc.one.class).to eq(Calculator)
      expect(my_calc.one).to eq(my_calc)
    end
  end

  describe '#five' do
    it "should return the same instance that is was called on if it's the first number" do
        expect(my_calc.five).to eq(my_calc)
    end
    it "should return a number if an operator has already been called on the object" do
      result = my_calc.five.plus.five
      expect(result).to eq(10)
    end
    it "should return a number if an operator has already been called on the object" do
      result = my_calc.five.minus.five
      expect(result).to eq(0)
    end

  end

  describe "#plus" do
    it "should return the same instance that it was called on" do
      expect(my_calc.five.plus).to eq(my_calc)
    end
  end

  describe "#minus" do
    it "should return the same instance that it was called on" do
      expect(my_calc.five.minus).to eq(my_calc)
    end
  end

end
