require 'lib/enforcer.rb'
require 'lib/minor_program.rb'

describe Program do
  let(:sark) { Enforcer.new('Sark', 'monitor_programs()', 'Minor Program Enforcer') }
  let(:garbage) { Minor.new('Riz', 'collect_garbage()') }

  it "inherits from Program class"
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
    let(:tron) { SuperProgram.new('Tron', 'protect_the_grid()', 3000) }

    it 'should return an empty string if attacked by a SuperProgram' do
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
      sark.delete(garbage)
      expect(garbage.describe_function).to include('deleted')
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
      expect(sark.inspect_program(garbage)).to eq(true)
    end

    it 'should return false if Program passed in has run more than 2 rogue functions' do
      garbage.run_rogue_function('take_break()')
      garbage.run_rogue_function('leave_job()')
      garbage.run_rogue_function('attack_enforcer()')
      expect(sark.inspect_program(garbage)).to eq(false)
    end
  end

  describe '#reform_program' do
    it 'should return true if MinorProgram object is passed in' do
      expect(sark.reform_program(garbage)).to eq(true)
    end

    it 'should return false if other object is passed in' do
      expect(sark.reform_program(1)).to eq(false)
    end

    it 'should_change the info of a minor program'
      expect()
    end
  end


end
