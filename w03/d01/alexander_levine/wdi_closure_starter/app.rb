require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })

require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

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
    Cohort.all.each do |cohort|
      puts cohort.name, cohort.id
    end
    puts "Select a number"
    user_input = gets.chomp
    Student.where(cohort_id: user_input.to_i).each do |student|
      puts student.name
    end
  when '3'
    puts "Name your cohort"
    cohort_to_add = gets.chomp
    puts "Start date? yyyy-mm-dd"
    start_date_to_add = gets.chomp
    Cohort.create({
      name: cohort_to_add,
      start_date: start_date_to_add
      })
  when '4'
    puts "What is your student's name?"
    student_name_to add = gets.chomp
    puts "What is the student's favorite color?"
    favorite_color_to_add = gets.chomp
    puts "What is the student's favorite number?"
    favorite_number_to_add = gets.chomp
    puts "Which cohort do you want to add the student to? SUPPLY ID"
    student_cohort = gets.chomp
    Student.create ({
      name: student_name_to add,
      favorite_color: favorite_color_to_add,
      favorite_number: favorite_number_to_add,
      cohort_id: student_cohort.to_i
      })
  when '5'
  when '6'
  when '7'
  when '0'
    exit
  end
end

binding.pry
