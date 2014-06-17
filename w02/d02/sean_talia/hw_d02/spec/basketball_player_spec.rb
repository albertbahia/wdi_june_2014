require_relative('../lib/basketball_player.rb')

describe BasketballPlayer do
  let(:andre) { BasketballPlayer.new('Andre Drummond', 'Basketball', 'Detroit',
    'Pistons', 2568360, 'Stan Van Gundy', 1095, 131) }
  it 'has a name' do
    expect(andre.name).to eq('Andre Drummond')
  end

  it 'has a sport' do
    expect(andre.sport).to eq('Basketball')
  end

  it 'has a city' do
    expect(andre.city).to eq('Detroit')
  end

  it 'has a team' do
    expect(andre.team).to eq('Pistons')
  end

  it 'has an income' do
    expect(andre.income).to eq(2568360)
  end

  it 'has an income' do
    expect(andre.head_coach).to eq('Stan Van Gundy')
  end

  it 'has an income' do
    expect(andre.points).to eq(1095)
  end

  it 'has an income' do
    expect(andre.blocks).to eq(131)
  end

  describe '#sign_endorsement' do
    it 'increases player income' do
      amount = 5000000
      new_income = andre.income + amount
      andre.sign_endorsement(amount)
      expect(andre.income).to eq(new_income)
    end
  end

  describe '#block_shot' do
    it 'should yell SWATTED' do
      expect(andre.block_shot).to include('SWATTED!!')
    end
    it 'should increase block stat by 1' do
      old_blocks = andre.blocks
      andre.block_shot
      expect(andre.blocks).to eq(old_blocks + 1)
    end
  end

  describe '#hit_buzzer_beater' do
    it 'should make mention of team winning' do
      expect(andre.hit_buzzer_beater(2)).to include(andre.team && 'WIN')
    end

    it 'should increase points stat by 2' do
      old_points = andre.points
      andre.hit_buzzer_beater(2)
      expect(andre.points).to eq(old_points + 2)
    end

    it 'should reject hitting a shot not worth 2 or 3 points' do
      expect(andre.hit_buzzer_beater(10)).to include('not possible')
    end
  end

end
