require 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  let(:my_calc) { Calculator.new }

  describe '.new' do
    it "should return an instance of Calculator class" do
      expect(my_calc.class).to eq(Calculator)
    end
  end

  describe '#five' do
    it "should return an instance of class calculator" do
      expect(my_calc.five.class).to eq(Calculator)
    end
    it "should return a numerical result if plus has already been called" do
      result = my_calc.five.plus.five
      expect(result).to eq(10)
    end
    it "should return a numerical result if minus has already been called" do
      result = my_calc.five.minus.five
      expect(result).to eq(0)
    end

  end

  describe '#plus' do
    it "should return an instance of class calculator" do
      expect(my_calc.five.plus.class).to eq(Calculator)
    end
  end
  describe '#minus' do
    it "should return an instance of class calculator" do
      expect(my_calc.five.minus.class).to eq(Calculator)
    end
  end

end
