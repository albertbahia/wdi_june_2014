require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })

def display_cohorts
  Cohort.all.each do |cohort|
    puts "----------"
    puts cohort.name
  end
end

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
      display_cohorts()
    when '2'
      puts "----------"
      puts "Which cohort's students would you like to see?"
      puts "----------"
      display_cohorts()
      cohort_name = gets.chomp
      selected_cohort = Cohort.find_by({name: cohort_name})
      Student.where({cohort_id: selected_cohort.id}).each { |student| puts student.name }
    when '3'
      puts "----------"
      puts "Which cohort would you like to add?"
      puts "----------"
      new_cohort = gets.chomp
      Cohort.create({name: new_cohort})
    when '4'
      puts "----------"
      puts "Which student would you like to add?"
      puts "----------"
      new_student = gets.chomp
      new_student_object = Student.create({name: new_student})
      puts "----------"
      puts "To which cohort would you like to add this student?"
      puts "----------"
      display_cohorts()
      cohort_to_add_to = gets.chomp
      cohort_new = Cohort.find_by({name: cohort_to_add_to})
      cohort_new.students.push(new_student_object)
    when '5'
      
    when '6'
    when '7'
    when '0'
      puts "Thanks for coming!  Sayonara!"
      break
  end
end
