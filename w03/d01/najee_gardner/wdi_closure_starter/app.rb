require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
})

cohorts = Cohort.all

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
    cohorts.each do |item|
      puts item.name
    end
  when '2'
    puts "Which cohort?"
    cohorts.each do |item|
      puts item.name
    end
    cohort_choice = gets.chomp

    chosen_cohort = cohorts.select {|item| item.name.downcase == cohort_choice.downcase}

    chosen_cohort.first.students.each do |student|
      puts student.name
    end

  # Add a cohort
  when '3'
    

  when '4'
  when '5'
  when '6'
  when '7'
  when '0'
  end
end
