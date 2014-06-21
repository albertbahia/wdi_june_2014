require_relative '../lib/alien.rb'

describe Alien do
  let(:beedle) {Alien.new("Beedle", "Neptune", "crustaceans")}

  it 'has a name' do
    expect(beedle.name).to(eq("Beedle"))
  end

  it 'has a home planet' do
    expect(beedle.home_planet).to(eq("Neptune"))
  end

  it 'has a preferred food' do
    expect(beedle.food).to(eq("crustaceans"))
  end

  describe "behavior on landing" do
    let(:beedle) {Alien.new("Beedle", "Neptune", "crustaceans")}
    describe "#land_on_earth" do
      it "should return true" do
        expect(beedle.land_on_earth).to(eq(true))
      end
    end
  end
end
