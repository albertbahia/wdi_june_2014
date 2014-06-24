require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
})

binding.pry

loop do
  puts '---------------'
  puts '   Main Menu'
  puts '---------------'
  puts '1. View all cohorts'
  puts '2. View students of a cohort'
  puts '3. Add cohort'
  puts '4. Add student to cohort'
  puts '5. Remove student'
  puts '6. Move student'
  puts '7. Remove cohort'
  puts '0. Quit'
  puts 'Enter your choice:'
  user_input = gets.chomp

  case user_input
    when '1'
      Cohort.all.each do |cohort_name|
        puts cohort_name.name
      end
    when '2'
      Student.all each do |student_name|
        puts student_name.name
      end
    when '3'
    when '4'
    when '5'
    when '6'
    when '7'
    when '0'
  end
end
