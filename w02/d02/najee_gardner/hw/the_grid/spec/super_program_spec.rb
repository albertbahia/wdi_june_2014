require_relative '../lib/super_program.rb'
require_relative '../lib/enforcer.rb'
require_relative '../lib/minor_program.rb'
require_relative '../lib/program.rb'

describe SuperProgram do
  let(:tron) { SuperProgram.new('Tron', 'protect_the_grid()', 'Hero of the Grid') }
  let(:sark) { Enforcer.new('Sark', 'monitor_programs()', 'Minor Program Enforcer') }
  let(:riz) { MinorProgram.new('Riz', 'collect_garbage()') }

  it 'inherits from Program class' do
    expect(tron.kind_of?(Program)).to eq(true)
  end

  it 'has a name' do
    expect(tron.name).to eq('Flynn 1.0')
  end

  it 'has a file size' do
    expect(tron.file_size).to eq(1024)
  end

  it 'has a primary function' do
    expect(tron.primary_function).to eq('protect_the_grid()')
  end

  it 'has an attack' do
    expect(tron.attack).to eq(300)
  end

  it 'has a title' do
    expect(tron.title).to eq('Hero of the Grid')
  end

  describe '#derezz' do
    it 'should return true if MinorProgram object is passed in' do
      expect(tron.derezz(riz)).to eq(true)
    end

    it 'should return false if any other object is passed in' do
      expect(tron.derezz(1)).to eq(false)
    end

    it 'should erase the attributes of MinorPrograms' do
      tron.derezz(riz)
      riz_info = [riz.name, riz.primary_function, riz.file_size]
      riz_info.each {|item| expect(item).to eq(nil)}
    end
  end


  describe '#self_derezz' do

    it 'should erase the attributes of itself' do
      tron.self_derezz
      tron_info = [tron.name, , tron.file_size, tron.primary_function, tron.title, tron.attack]
      tron_info.each do |item|
        expect(item).to eq(nil)
      end
    end

  end

  describe '#describe_function' do
    it 'should include the name and primary function if the output if there is one' do
      expect(tron.describe_function).to include('tron')
      expect(tron.describe_function).to include('protect_the_grid()')
    end

    it 'should include "derezzed" if no primary function exists' do
      sark.derezz(riz)
      expect(riz.describe_function).to include('derezzed')
    end
  end

  describe '#run_primary_function' do
    it 'should include "running" and the primary function' do
      expect(tron.run_primary_function).to include('running')
      expect(tron.run_primary_function).to include('run_sub_programs()')
    end
  end

  describe '#restore_program' do
    it 'should return a MinorProgram object if derezzed Minor object is pass in' do
      tron.derez(riz)
      expect(tron.restore_program(riz).class).to eq(MinorProgram)
    end

    it 'should return nil if a Minor program object is not passed in' do
      100.times {tron.fight_enforcer(sark)}
      expect(tron.restore_program(sark)).to eq(nil)
    end
  end

  describe '#fight_enforcer' do
    it 'should reduce the file_size of a super program' do
      tron.fight_super_program(sark)
      expect(tron.file_size).to eq(212)
    end

    it 'should not reduce the file_size of any other Program type passed in' do
      tron.fight_super_program(riz)
      expect(riz.file_size).to eq(256)
    end

    it 'should return nil if any other Program type is passed in' do
      expect(tron.fight_super_program(tron)).to eq(nil)
    end

    it 'should make all attributes of Enforcer objects nil if Enforcer file_size reaches 0' do
      100.times {tron.fight_enforcer(sark)}
      sark_info = [sark.name, , sark.file_size, sark.primary_function, sark.attack, sark.division, sark.password]
      expect(sark_info).to eq([nil, nil, nil, nil, nil, nil])
    end
  end
end
