# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'malr', first_name: 'Michael', last_name: 'Ross')
User.create(username: 'eric', first_name: 'Eric', last_name: 'Frommelt')
User.create(username: 'seant', first_name: 'Sean', last_name: 'Talia')
