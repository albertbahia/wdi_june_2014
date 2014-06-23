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
  puts '  Main Menu'
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
    Cohort.all.each do |cohort|
      puts cohort.name
    end
    puts 'Select a cohort to view a list of students:'
    cohort_students = gets.chomp.capitalize


      if cohort_students == 'Closure'
        closure = Student.where(cohort_id: 1)
        closure.all.each do |student|
          puts student.name
        end
      elsif cohort_students == 'Openness'
        openness = Student.where(cohort_id: 2)
        openness.all.each do |student|
          puts student.name
        end
      end



  when '3'
    puts 'To add a cohort, please enter a name:'
    cohort_name = gets.chomp.capitalize
    puts "Please enter the cohort's start date:"
    start_date = gets.chomp.capitalize
    new_cohort = Cohort.create({name: cohort_name, start_date: start_date})
    puts new_cohort


  when '4'
    puts 'To add a student, enter a name:'
    student_name = gets.chomp.capitalize

    puts 'Enter a favorite color:'
    favorite_color = gets.chomp.capitalize

    puts 'Enter a favorite number:'
    favorite_number = gets.chomp

    Cohort.all.each do |cohort|
      puts cohort.name
    end

    puts 'Please select a cohort to be added to:'
    add_to_cohort = gets.chomp.capitalize

    if add_to_cohort == 'Closure'
      new_student = Student.create({
        name: student_name,
        favorite_color: favorite_color,
        favorite_number: favorite_number,
        cohort_id: 1})

    elsif add_to_cohort == 'Openness'
      new_student = Student.create({
        name: student_name,
        favorite_color: favorite_color,
        favorite_number: favorite_number,
        cohort_id: 2})

    elsif add_to_cohort == 'Happy place'
      new_student = Student.create({
        name: student_name,
        favorite_color: favorite_color,
        favorite_number: favorite_number,
        cohort_id: 3})

    else
      puts 'Please choose an already existing cohort:'

    end

  # when '5'
  #
  # when '6'
  #
  # when '7'
  #
  # when '0'
  #  break
  # end
  end
end

binding.pry
