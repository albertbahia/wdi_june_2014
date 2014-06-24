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
      puts cohort.name
      puts cohort.students.count
    end

  when '2'
    puts 'What cohort do you want to view?'
    cohort_name_input = gets.chomp()
    if cohort_name_input == "Closure"
      Cohort.find_by({name: "Closure"}).students.each do |student|
        puts student.name
      end
    elsif cohort_name_input == "Openness"
      Cohort.find_by({name: "Openness"}).students.each do |student|
        puts student.name
      end
    end
  when '3'
    puts "Please enter the cohorts name"
    new_cohort_name = gets.chomp()
    new_cohort = Cohort.new({name: new_cohort_name })

    puts "What is the start_date of this cohort?"
    new_start_date = gets.chomp()
    new_cohort.start_date = new_start_date
    new
  when '4'
  when '5'
  when '6'
  when '7'
  when '0'  
  end
end



# * Write a Ruby application that
#   * Lists the cohorts along with total number of students enrolled
#   * Lists students enrolled in a cohort
#   * Allows user to add a cohort
#   * Allows user to add a student to a cohort
#   * Allows user to remove a student
#   * Allows user to reassign a student from one cohort to another
#   * Allows user to remove a cohort

