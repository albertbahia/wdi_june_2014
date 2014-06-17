# require_relative './person.rb'

todo_list = [
  "Wash the car",
  "Go Shopping",
  "World Domination"
]

# personal_info = {
#   "name" => "Hari",
#   "age" => 50,
#   "favorite_food" => "Bananas"
# }

    #|_
    #  V

# user = Person.new("Hari", 50, "Bananas")


def display_heading(text)
  puts("-----------------------------------------")
  puts(text)
  puts("-----------------------------------------")
end

def main_menu()
  # Main Menu
  display_heading("HAMCo Digital Assistant")
  puts("Welcome to HAMda")
  puts("1. View Personal Info")
  puts("2. Convert temperatures")
  puts("3. To-do list")
  puts("4. NSA Wiretap Request System")
  puts("5. Home Automated Temperature")
  puts("6. Quit")
  puts("-----------------------------------------")
end

def personal_info_menu(person)
  # Personal Info
  display_heading("Personal Information")
  puts("Name: #{person.name}")
  puts("Age: #{person.age}")
  puts("Favorite Food: #{person.favorite_food}")

  # Edit Personal Info Menu
  puts("1. Edit name")
  puts("2. Edit age")
  puts("3. Edit favorite food")
end

def personal_info_action(choice, person)
  # Name change
  if choice == "1"
    puts("What would you like to change it to?")
    new_name = gets().chomp()
    person.rename(new_name)

  # Age change
elsif choice == "2"
    puts("What would you like to change it to?")
    new_age = gets().chomp().to_i
    person.change_age(new_age)

  # Favorite food change
elsif choice == "3"
    puts("What would you like to change it to?")
    new_favorite_food = gets().chomp()
    person.change_favorite_food(new_favorite_food)
  end
end

def temperature_menu()
    #Temperature Menu
    display_heading("Temperature Converter")
    puts("1. Convert Fahrenheit to Celsius")
    puts("2. Convert Celsius to Fahrenheit")
end

def temperature_action(choice)
  # Fahrenheit to Celsius
  if choice == "1"
    display_heading("Fahrenheit to Celsius")
    puts("Enter temperature in Fahrenheit:")
    temperature_input = gets().chomp().to_i

    converted_temp = 5 * (temperature_input - 32) / 9
    puts("#{temperature_input}F = *** #{converted_temp}C ***")

  # Celsius to Fahrenheit
  elsif choice == "2"
    display_heading("Celsius to Fahrenheit")
    puts("Enter temperature in Celsius:")
    temperature_input = gets().chomp().to_i

    converted_temp = 9 * (temperature_input) / 5 + 32
    puts("#{temperature_input}C = *** #{converted_temp}F ***")

  # Invalid temperature menu option
  else
    puts("Invalid choice made.")
  end
end

def todo_menu(list)
  # To-do list
  display_heading("To-Do List")
  list.each_with_index do |item, idx|
    puts(idx.to_s + '. ' + item)
  end
  puts

  # To-do Menu
  puts("1. Add to-do item")
  puts("2. Finish to-do item")
  puts("Enter your choice:")
end

def todo_action(choice, list)
  # Add To-do
  if choice == "1"
    puts("What would you like to add?")
    new_todo_item = gets().chomp()
    list.push(new_todo_item)

  # Finish To-do
elsif choice == "2"
    puts("What did you finish?")
    finished_index = gets().chomp().to_i()
    list.delete_at(finished_index)
  end
end

def home_automation()
  puts("Is your A/C working? Y/N")
  ac_working = (gets.chomp.upcase == "Y")
  puts("What temperature is it now?")
  current_temp = gets.chomp.to_i
  puts("What temperature would you like?")
  wanted_temp = gets.chomp.to_i

  too_hot = current_temp > wanted_temp
  if ac_working
    if too_hot
      puts("Turn on the A/C please.")
    end
  else
    if too_hot
      puts("Fix the A/C now! It's hot!")
    else
      puts("Fix the A/C whenever you have the chance.. It's cool...")
    end
  end


end

def nsa_menu()
  display_heading("NSA Wiretap Requests")
  puts("Coming soon...")
end

def quit_hamda()
  puts("Goodbye!")
  exit
end

loop do
  main_menu()
  puts("Enter a number:")
  user_input = gets().chomp()

  if user_input == "1"
    personal_info_menu(user)
    edit_info_input = gets().chomp()
    personal_info_action(edit_info_input, user)

  # Temperature Converter
  elsif user_input == "2"
    temperature_menu()
    puts("Enter a number:")
    conversion_input = gets().chomp()
    temperature_action(conversion_input)

  # To-do list
  elsif user_input == "3"
    todo_menu(todo_list)
    todo_input = gets().chomp()
    todo_action(todo_input, todo_list)

  # NSA Wiretap
  elsif user_input == "4"
    nsa_menu()

  # Home Automation
  elsif user_input == "5"
    home_automation()


  # Quit
  elsif user_input == "6"
    quit_hamda()

  # Invalid main menu option
  else
    puts("Please choose a valid menu option")
  end
end
