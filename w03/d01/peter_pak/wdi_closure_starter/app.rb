require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })

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
    Cohort.all.each do |cohort|
      string = "#{cohort.name.to_s}: "
      string += "#{cohort.students.count.to_s} Students"
      puts string
    end
  when '2'
    puts 'Which cohort would you like to see?'
    cohort_input = gets.chomp
    case cohort_input
    when '1'
      Student.where({ cohort_id: 1 }).each do |student|
        puts student.name
      end
    when '2'
      Student.where({ cohort_id: 2 }).each do |student|
        puts student.name
      end
    end
    
  when '3'
  when '4'
  when '5'
  when '6'
  when '7'
  when '0'
    exit
  end
end
