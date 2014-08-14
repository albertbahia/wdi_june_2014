# Write a Ruby application that
# Lists the cohorts along with total number of students enrolled
# Lists students enrolled in a cohort
# Allows user to add a cohort
# Allows user to add a student to a cohort
# Allows user to remove a student
# Allows user to reassign a student from one cohort to another
# Allows user to remove a cohort


require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
    database: 'wdi_closure_db',
    adapter: 'postgresql'
})

# binding.pry

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
        puts cohort.name
      end
    when '2'
      puts "Which cohort? Type 1 for Closure. Type 2 for Opennness."
      cohort_choice = gets.chomp.to_i
      if cohort_choice == 1
      Student.where({ cohort_id: 1 }).each do |student|
        puts student.name
        end
      elsif cohort_choice == 2
      Student.where({ cohort_id: 2 }).each do |student|
        puts student.name
        end
      end
    when '3'
      cohort = Cohort.new
      puts "What name do you want to assign to your new cohort?"
      cohort_name = gets.chomp
      cohort.name = cohort_name
      puts "When does this cohort start? (YYYY-MM-DD)"
      start_date = gets.chomp
      cohort.start_date = start_date
      cohort.save
    when '4'
      puts "Which cohort do you want to add to?"
      
    when '5'
    when '6'
    when '7'
    when '0'
  end
end
