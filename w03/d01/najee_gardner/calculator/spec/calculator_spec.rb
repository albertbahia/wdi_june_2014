require 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  let(:my_calc) { Calculator.new }

  describe '.new' do
    it "should return an instance of Calculator class" do
      expect(my_calc.class).to eq(Calculator)
    end
  end


  describe "#five" do
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
    it "should return a numerical result if multiply has already been called" do
      result = my_calc.five.multiply.five
      expect(result).to eq(25)
    end
    it "should return a numerical result if multiply has already been called" do
      result = my_calc.five.divide.five
      expect(result).to eq(1)
    end
  end

  describe "#two" do
    it "should return an instance of class calculator" do
      expect(my_calc.two.class).to eq(Calculator)
    end
    it "should return a numerical result if plus has already been called" do
      result = my_calc.one.plus.two
      expect(result).to eq(3)
    end
    it "should return a numerical result if minus has already been called" do
      result = my_calc.seven.minus.two
      expect(result).to eq(5)
    end
    it "should return a numerical result if multiply has already been called" do
      result = my_calc.eight.multiply.two
      expect(result).to eq(16)
    end
    it "should return a numerical result if multiply has already been called" do
      result = my_calc.six.divide.two
      expect(result).to eq(3)
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
  describe '#multiply' do
    it "should return an instance of class calculator" do
      expect(my_calc.five.multiply.class).to eq(Calculator)
    end
  end
  describe '#divide' do
    it "should return an instance of class calculator" do
      expect(my_calc.five.divide.class).to eq(Calculator)
    end
  end

end
