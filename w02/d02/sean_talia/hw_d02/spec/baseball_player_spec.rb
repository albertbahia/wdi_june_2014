require_relative('../lib/baseball_player.rb')

describe BaseballPlayer do
  let(:miguel) { BaseballPlayer.new('Miguel Cabrera', 'Baseball', 'Detroit', 'Tigers',
    31000000, 'Brad Ausmus', 44, 137, 3) }
  it 'has a name' do
    expect(miguel.name).to eq('Miguel Cabrera')
  end

  it 'has a sport' do
    expect(miguel.sport).to eq('Baseball')
  end

  it 'has a city' do
    expect(miguel.city).to eq('Detroit')
  end

  it 'has a team' do
    expect(miguel.team).to eq('Tigers')
  end

  it 'has an income' do
    expect(miguel.income).to eq(31000000)
  end

  it 'has a manager' do
    expect(miguel.manager).to eq('Brad Ausmus')
  end

  it 'has a HR stat' do
    expect(miguel.home_runs).to eq(44)
  end

  it 'has an RBI stat' do
    expect(miguel.rbi).to eq(137)
  end

  it 'has an SB stat' do
    expect(miguel.stolen_bases).to eq(3)
  end



  describe '#sign_endorsement' do
    it 'increases player income' do
      amount = 5000000
      new_income = miguel.income + amount
      miguel.sign_endorsement(amount)
      expect(miguel.income).to eq(new_income)
    end
  end

  describe '#hit_grand_slam()' do
    
    it 'increase HR by 1, RBI by 4' do
      old_hr = miguel.home_runs
      old_rbi = miguel.rbi
      miguel.hit_grand_slam()
      expect(miguel.home_runs).to eq(old_hr + 1)
      expect(miguel.rbi).to eq(old_rbi + 4)
    end

    it 'should make mention of how incredible that hit was' do
      expect(miguel.hit_grand_slam).to include('INCREDIBLE!!!!')
    end
  end

  describe '#steal_base()' do

    it 'increase stolen bases by 1' do
      old_sb = miguel.stolen_bases
      miguel.steal_base()
      expect(miguel.stolen_bases).to eq(old_sb + 1)
    end

    it 'should make mention that runner was safe' do
      expect(miguel.steal_base).to include('safe!!')
    end
  end

end
