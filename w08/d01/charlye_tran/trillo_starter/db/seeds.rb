# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

todos = ["Wash the car",
         "Wrap things in cash",
         "Write blog post about selfies",
         "Learn about javascript events"]

completed = ["Do 20 jumping jacks",
             "See the rain coming down on a sunny day",
             "Learn about jQuery DOM manipulation"]

todos.each do |desc|
  Card.create!(description: desc, completed: false)
end

completed.each do |desc|
  Card.create!(description: desc, completed: true)
end
