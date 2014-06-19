require_relative '../lib/program.rb'
require_relative '../lib/enforcer.rb'
require_relative '../lib/minor_program.rb'
require_relative '../lib/super_program.rb'

describe Enforcer do
  let(:sark) { Enforcer.new('Sark', 'monitor_programs()', 'Minor Program Enforcer') }
  let(:riz) { MinorProgram.new('Riz', 'collect_garbage()') }
  let(:tron) { SuperProgram.new('Tron', 'protect_the_grid()', 'Hero of the Grid') }

  it "inherits from Program class" do
    expect(sark.kind_of?(Program)).to eq(true)
  end

  it 'has a name' do
    expect(sark.name).to eq('Sark')
  end

  it 'has a file size' do
    expect(sark.file_size).to eq(256)
  end

  it 'has a primary function' do
    expect(sark.primary_function).to eq('monitor_programs()')
  end

  it 'has a division' do
    expect(sark.division).to eq('Minor Program Enforcer')
  end

  describe '#name, #file_size, #primary_function, #division' do


    it 'should return an empty nil if file size is brought to zero by a SuperProgram' do
      tron.attack(sark)
      sark_info = [sark.name, sark.file_size, sark.primary_function, sark.division]
      sark_info.each {|item| expect(item).to eq('')}
    end

  end

  describe '#delete_program' do

    it 'should return true if Program object is passed in' do
      expect(sark.derezz(mac)).to eq(true)
    end

    it 'should return false if any other object is passed in' do
      expect(sark.delete_program(1)).to eq(false)
    end
  end

  describe '#describe_function' do
    it 'should include the name and primary function if the output if there is one' do
      expect(sark.describe_function).to include('Sark')
      expect(sark.describe_function).to include('monitor_programs()')
    end

    it 'should include "deleted" if no primary function exists' do
      sark.delete(riz)
      expect(riz.describe_function).to include('deleted')
    end
  end

  describe '#run_primary_function' do
    it 'should include "running" and the primary function' do
      expect(sark.run_primary_function).to include('running')
      expect(sark.run_primary_function).to include('monitor_programs()')
    end
  end

  describe '#inspect_program' do
    it 'should return true if program passed in has run less than 3 rogue functions' do
      expect(sark.inspect_program(riz)).to eq(true)
    end

    it 'should return false if Program passed in has run more than 2 rogue functions' do
      riz.run_rogue_function('take_break()')
      riz.run_rogue_function('leave_job()')
      riz.run_rogue_function('attack_enforcer()')
      expect(sark.inspect_program(riz)).to eq(false)
    end
  end

  describe '#reform_function_of' do
    it 'should return true if MinorProgram object is passed in' do
      expect(sark.reform_function_of(riz)).to eq(true)
    end

    it 'should return false if other object is passed in' do
      expect(sark.reform_program(1)).to eq(false)
    end

    it 'should change the primary function of only a minor program' do
      let(:clu) { Enforcer.new('Clu', 'get_to_work()', 'Workers Enforcer')}
      sark.reform_function_of(riz, 'count_cycles()')
      sark.reform_function_of(tron, 'hurt_programs()')
      sark.reform_function_of(clu, 'do_something()')

      expect(riz.primary_function).to eq('count_cycles()')
      expect(clu.primary_function).to eq('get_to_work()')
      expect(tron.primary_function).to eq('protect_the_grid()')
    end

  end

  describe '#fight_super_program' do
    it 'should only reduce the file_size of a super program' do
      sark.fight_super_program(tron)
      sark.fight_super_program(riz)
      expect(tron.file_size).to eq(824)
      expect(riz.file_size).to eq(256)
    end

    it 'should make a programs attributes be nil if filesize becomes zero' do
      100.times { sark.fight_super_program(tron) }
      tron_info = [tron.name, , tron.file_size, tron.primary_function, tron.title, tron.attack]
      tron_info.each {|item| expect(item).to eq(nil)}
    end
  end
end
