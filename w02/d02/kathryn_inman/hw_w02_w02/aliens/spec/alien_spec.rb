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

  describe '#land_on_earth' do
    expect(beedle.land_on_earth).to include("crustaceans")
    end
end
