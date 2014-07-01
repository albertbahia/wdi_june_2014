require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection ({
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
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
  when '2'
    puts "Which Cohort do you want to see?"
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
    cohort_choice = gets.chomp
    Student.all.where({cohort_id: cohort_choice}).each{|student| puts student.name}
  when '3'
    puts 'Whats the name of the cohort you want to create?'
    cohort_name = gets.chomp
    puts 'Whats the start date, in yyyy/mm/dd format?'
    cohort_start_date = gets.chomp
    Cohort.create({name: cohort_name, start_date: cohort_start_date})
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
  when '4'
    puts 'Whats the students name?'
    students_name = gets.chomp
    puts 'Whats the students favorite color?'
    students_fav_color = gets.chomp
    puts 'Whats the students favorite number?'
    students_fav_num = gets.chomp
    puts 'What cohort will the student be in?'
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
    students_cohort = gets.chomp
    Student.create({name: students_name, favorite_color: students_fav_color, favorite_number: students_fav_num, cohort_id: students_cohort})

  when '5'
    puts 'Whats the students id number you want to remove?'
    Student.all.each{|student| puts "#{student.id}: #{student.name}"}
    student_to_remove = gets.chomp
    Student.destroy(student_to_remove)
  when '6'
    puts 'Whats the students id number you want to move?'
    Student.all.each{|student| puts "#{student.id}: #{student.name}"}
    student_to_move = gets.chomp
    puts 'Which cohort will the student be moving to?'
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
    cohort_move = gets.chomp
    Student.update(student_to_move, {cohort_id: cohort_move})
  when '7'
    puts 'What cohort would you like to remove?'
    Cohort.all.each.with_index {|cohort, i| puts "#{i+1}: #{cohort.name}"}
    cohort_remove = gets.chomp
    Cohort.destroy(cohort_remove)
  when '0'

    break
  end
end
binding.pry
