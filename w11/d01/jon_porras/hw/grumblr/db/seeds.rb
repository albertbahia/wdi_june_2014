# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = ["Jon", "Shaq", "Renaldo", "Sergio", "Esteban", "Marina", "Laura", "Maria"]
title = ["Professional Grumble", "Daily Grumble", "Rather be Grumbling", "Grumble for Success", "Grumble Day and Night"]

20.times do
  Grumble.create({
      author: authors.sample,
      content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      title: title.sample,
      image: "http://placekitten.com/g/200/300",
      avatar: "http://placekitten.com/g/200/300"
  })
end
