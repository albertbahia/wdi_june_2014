require_relative('../lib/character.rb')

describe Character do
  let(:marty) {Character.new("Martin Eric Hart", "Marty", "Detective")}
  it 'has a name' do
    expect(marty.name).to eq("Martin Eric Hart")
  end

  it 'has a nickname' do
    expect(marty.nick_name).to eq("Marty")
  end

  it 'has a occupation' do
    expect(marty.occupation).to eq("Detective")
  end

  discribe '#introduce' do
    expect(marty.introduce).to include(marty.name)
    expect(marty.introduce).to include(marty.nick_name)
  end
end
