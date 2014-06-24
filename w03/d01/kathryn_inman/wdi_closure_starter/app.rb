require 'active_record'
require 'pry'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })


#Main Menu
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


#Methods
    def view_students(cohort_selected)
      c = Cohort.find_by(name: cohort_selected)
      c.students.each do |student|
        puts student.name
      end
    end

    def add_cohort(init_name, init_start_date)
      new_cohort = Cohort.create({name: init_name, start_date: init_start_date})
    end

    def add_student(init_name, init_color, init_number, init_student_cohort_id)
      new_student - Student.create({
        name: init_name,
        favorite_color: init_color,
        favorite_number: init_number,
        cohort_id: init_student_cohort_id})
      end

#Input Cases
    case user_input
    when '1'
      puts "-"*25
      Cohort.all.each do |cohort|
        puts cohort.name
      end
    when '2'
      puts "Enter cohort name:"
      cohort_selected = gets.chomp
      puts view_students(cohort_selected)
    when '3'
      puts "Enter new cohort name:"
      new_name = gets.chomp
      puts "Enter new cohort start date:"
      new_date = gets.chomp
      new_cohort = add_cohort(new_name, new_date)
      puts "You've added #{new_cohort.name}."
    when '4'
      puts "Enter new student name:"
      new_name = gets.chomp
      puts "Enter new student's favorite color:"
      new_color = gets.chomp
      puts "Enter new student's favorite number:"
      new_number = gets.chomp
      puts "Enter new student's cohort:"
      new_student_cohort_name = gets.chomp
      new_student_cohort_id = new_student_cohort_name.id
      new_student = add_student(new_name, new_color, new_number, new_student_cohort_id)
      puts "You've added #{new_student.name}."
    when '5'
    when '6'
    when '7'
    when '0'
      quit
    end
  end

  binding.pry
