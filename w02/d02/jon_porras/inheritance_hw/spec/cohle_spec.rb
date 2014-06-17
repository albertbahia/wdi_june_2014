require_relative('../lib/cohle.rb')

describe Cohle do
  let(:cohle) {Cohle.new("Rustin Spencer Cohle", "Rust", "Detective")}
  it 'has a name' do
    expect(cohle.name).to eq("Rustin Spencer Cohle")
  end

  it 'has a nick_name' do
    expect(cohle.nick_name).to eq("Rust")
  end

  it 'has an occupation' do
    expect(cohle.occupation).to eq("Detective")
  end

  it 'is a smoker' do
    expect(cohle.smokes).to eq(true)
  end

  describe '#introduce' do
    expect(cohle.introduce).to include(cohle.name)
    expect(cohle.introduce).to include(cohle.nick_name)
  end

  describe '#quits' do
    expect(cohle.quits).to eq(cohle.occupation == "Civilian")
  end

  describe '#philosophize' do
    expect(cohle.philosophize).to include("It's all one ghetto, man. A giant gutter in outer space")
  end

end
