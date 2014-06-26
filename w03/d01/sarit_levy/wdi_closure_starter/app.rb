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
# View all cohorts
    when '1' Cohort.all.each do |cohort|
        puts cohort.name
    end
# View all students of a cohort
    when '2'
      puts "Which Cohort would you like to view? (Choose '1' or '2')"
      user_input == gets().chomp()
        if '1'
          puts Student.where({ cohort_id: 1 }).each do |student|
          puts student.name
        else
          puts Student.where({ cohort_id: 2 }).each do |student|
          puts student.name
        end
      end

#Add a cohort
  # needs to be completed
  when '3'

  when '4'
  when '5'
  when '6'
  when '7'
  when '0'
end
end
