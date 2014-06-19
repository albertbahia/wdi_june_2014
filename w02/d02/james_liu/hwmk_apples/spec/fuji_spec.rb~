require_relative('../lib/fuji.rb')

describe Fuji do
  let(:juice) { Fuji.new('Happy Sunshine Apple Farms') }
  
  it 'has an origin' do
    expect(juice.origin).to include('Happy Sunshine Apple Farms')
  end
end

  describe '#grows' do
    let(:juice) { Fuji.new( 'Happy Sunshine Apple Farms') }
    expect(juice.grows).to eq("Good job, Johnny Appleseed! You grew a tree")
    end
    
    describe '#juicing' do
    expect(juice.juicing).to include('Liquid Delicious')
    end
end
