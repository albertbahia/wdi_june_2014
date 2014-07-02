require_relative '../lib/BirdOfParadise.rb'

describe BirdOfParadise do
  let(:snoopy) { BirdOfParadise.new('Snoopy', 13, 'tropics', 7, 'red')}

  it 'has a name' do
    expect(snoopy.name).to eq('Snoopy')
  end

  it 'has an age' do
    expect(snoopy.age).to eq(13)
  end

  it 'has a location' do
    expect(snoopy.location).to eq('tropics')
  end

  it 'has a speed' do
    expect(snoopy.speed).to eq(7)
  end

   it 'has a color' do
     expect(snoopy.color).to eq('red')
   end

   describe '#get_food' do
     it 'got food' do
       expect(snoopy.get_food).to eq(true)
     end
   end

    # describe '#fly' do
    #   it 'flew' do
    #     expect(snoopy.fly).to eq('Im flying!')
    # end

    # describe '#bathes' do
    #   it 'bathed' do
    #   expect(snoopy.bathes).to eq('Im very clean!')
    # end
  end
