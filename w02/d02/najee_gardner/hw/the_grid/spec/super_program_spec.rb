require_relative '../lib/super_program.rb'
require_relative '../lib/enforcer.rb'
require_relative '../lib/minor_program.rb'
require_relative '../lib/program.rb'

describe SuperProgram do
  let(:tron) { SuperProgram.new('Tron', 'protect_the_grid()', 3000) }
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

  describe '#derezz' do
    it 'should erase the attributes of other programs' do
      tron.derezz(riz)
      mac_info = [riz.name, riz.primary_function, riz.file_size]
      mac_info.each {|item| expect(item).to eq(nil)}
    end
  end


  describe '#self_derezz' do

    it 'should erase the attributes of itself' do
      tron.self_derezz
      tron_info = [tron.name, , tron.file_size, tron.primary_function, tron.title, tron.attack]
      tron_info.each {|item| expect(item).to eq(nil)}
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
end
