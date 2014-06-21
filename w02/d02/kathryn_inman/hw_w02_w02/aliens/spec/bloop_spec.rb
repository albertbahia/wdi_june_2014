require_relative('../lib/bloop.rb')

describe Bloop do
  let(:nyom) {Bloop.new("Nyom", "Pluto", "pondwater", 2)}

  it 'has a name' do
    expect(nyom.name).to(eq("Nyom"))
  end

  it 'has a home planet' do
    expect(nyom.home_planet).to(eq("Pluto"))
  end

  it 'has a preferred food' do
    expect(nyom.food).to(eq("pondwater"))
  end

  it 'has a volume' do
    expect(nyom.volume).to(eq(2))
  end

  describe '#land_on_earth' do
    it "should say it's going to look for food" do
      expect(nyom.land_on_earth).to include("pondwater")
    end
  end

  describe "#drink" do
    it "should grow in volume by 1 gallon" do
      nyom.drink
      expect(nyom.volume).to(eq(3))
    end

    describe "#dries_out" do
      it "should shrink in volume by 1 gallon" do
        nyom.dries_out
        expect(nyom.volume).to(eq(1))
      end

    end
  end
end
