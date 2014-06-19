require_relative('../lib/greenie.rb')

describe Greenie do
  let(:georg) {Greenie.new("Georg", "Venus", "anchovy oil", 4)}

  it 'has a name' do
    expect(georg.name).to(eq("Georg"))
  end

  it 'has a home planet' do
    expect(georg.home_planet).to(eq("Venus"))
  end

  it 'has a preferred food' do
    expect(georg.food).to(eq("anchovy oil"))
  end

  it 'has a number of cigarettes to trade' do
    expect(georg.cigs_to_trade).to(eq(4))
  end

  describe '#land_on_earth' do
    it "should say it's going to look for food" do
      expect(georg.land_on_earth).to include("anchovy oil")
    end
  end

  describe "#trade_cig_for_oil" do
    it "should decrease number of cigarettes by one" do
      georg.trade_cig_for_oil
      expect(georg.cigs_to_trade).to(eq(3))
    end
  end

  describe "human_assimilation" do
    it "should change name to Mr. Green" do
      georg.human_assimilation
      expect(georg.name).to(eq("Mr. Green"))
    end
  end

  end #of Specs
