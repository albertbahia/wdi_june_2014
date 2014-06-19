require_relative('../lib/formic.rb')

describe Formic do
  let(:vrac) {Formic.new("Vrac", "Europa", "horses", 5)}

  it 'has a name' do
    expect(vrac.name).to(eq("Vrac"))
  end

  it 'has a home planet' do
    expect(vrac.home_planet).to(eq("Europa"))
  end

  it 'has a preferred food' do
    expect(vrac.food).to(eq("horses"))
  end

  it 'has a level of ansible connection' do
    expect(vrac.ansible_connection).to(eq(5))
  end

  describe '#land_on_earth' do
    it "should say it's going to look for food" do
      expect(vrac.land_on_earth).to include("horses")
    end
  end

  describe "#climb_up_mountain" do
    it "should increase ansible connection by 2" do
      expect(vrac.climb_up_mountain).to(eq(7))
    end
    end

    describe "#hide_underground" do
      it "should decrease ansible connection by 2"do
        expect(vrac.hide_underground).to(eq(3))
      end

      end

    end #of Specs
