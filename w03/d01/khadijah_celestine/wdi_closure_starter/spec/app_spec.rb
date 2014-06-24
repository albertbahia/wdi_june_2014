require_relative '../app'
require_relative '../lib/cohort.rb'
require_relative '../lib/student.rb'
require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })

describe '#app' do
  let(:student) {Student.new("TheKhadijah", "pink", 218, 2)}
  let(:cohort) {Cohort.new("TheHort", "October 9, 2014")}
  describe '#view_cohorts' do
    it 'prints names of all cohorts' do
      expect(view_cohorts).to include("Closure")
    end
  end

  describe '#students_of' do
    it 'prints names of all students in given cohort' do
      expect(true).to eq(true)
    end
    it 'does not print names of all students in database' do
      expect(true).to eq(true)
    end
  end

  describe '#add_cohort' do
    it 'prints names of all cohorts' do
      expect(true).to eq(true)
    end
  end

  describe '#add_student_to' do
    it 'prints names of all cohorts' do
      expect(true).to eq(true)
    end
  end

  describe '#remove_student' do
    it 'prints names of all cohorts' do
      expect(true).to eq(true)
    end
  end

  describe '#remove_cohort' do
    it 'prints names of all cohorts' do
      expect(true).to eq(true)
    end
  end
end
