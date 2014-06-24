require 'active_record'
require_relative 'lib/cohort.rb'
require_relative 'lib/student.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdi_closure_db',
  adapter: 'postgresql'
  })

def view_cohorts()
  Cohort.all.each do |cohort|
    puts cohort.name
  end
end

def students_of(cohort)
  c = Cohort.find_by(name: cohort)
  c.students.each do |student|
    puts student.name
  end
end

def add_cohort(cohort, start_date)
  new_c = Cohort.create({
    name: cohort,
    start_date: start_date
    })
    new_c.save
end

def add_student_to(cohort, name, favorite_color, favorite_number)
  c = Cohort.find_by(name: cohort)
  new_s = Student.create({
    name: name,
    favorite_color: favorite_color,
    favorite_number: favorite_number,
    cohort_id: c.id
    })
    new_s.save
end

def remove_student(cohort, student_name)
  c = Cohort.find_by(name: cohort)
  s = Student.find_by(name: student_name, cohort_id: c.id)
  #s = Student.find_by(name: "Khadijah", cohort_id: 2)
  puts s.name
end
# puts "old"
# students_of("Openness")
# puts
# remove_student("Openness", "Khadijah")
# puts "new"
# students_of("Openness")
# puts

#remove students first
def remove_cohort
end

# loop do
#   system "clear"
#   puts '---------------'
#   puts '   Main Menu'
#   puts '---------------'
#   puts '1. View all cohorts'
# =>   view_cohorts
#   puts '2. View students of a cohort'
#   puts '3. Add cohort'
#   puts '4. Add student to cohort'
#   puts '5. Remove student'
#   puts '6. Move student'
#   puts '7. Remove cohort'
#   puts '0. Quit'
#   puts 'Enter your choice:'
#   user_input = gets.chomp
#
#   case user_input
#   when '1'
#   when '2'
#   when '3'
#   when '4'
#   when '5'
#   when '6'
#   when '7'
#   when '0'
#     puts 'Thank you and Goodbye'
#     exit
#   end
# end
