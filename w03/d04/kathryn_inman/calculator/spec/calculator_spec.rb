require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  let(:my_calc) { Calculator.new }

  describe ".new" do
    it "should return a new calculator object" do
      expect(my_calc.class).to eq(Calculator)
    end
  end

  describe "#one" do
    it "should return the same instance of the calculator class if no operator has been set" do
      expect(my_calc.one).to eq(my_calc)
    end

    it "should return the addition result if a number and the plus operator has been set" do
      expect(my_calc.one.plus.one).to eq(2)
    end

    it "should return the subtraction result if a number and the minus operator has been set" do
      expect(my_calc.one.minus.one).to eq(0)
    end

  end

  describe "#plus" do
    it "should return the same instance of the calculator class" do
      expect(my_calc.one.plus).to eq(my_calc)
    end
  end

  describe "#minus" do
    it "should return the same instance of the calculator class" do
      expect(my_calc.one.minus).to eq(my_calc)
    end
  end


end
