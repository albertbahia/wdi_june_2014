# def battle(army1, army2)
#   puts army1.name
#   puts '------------'
#   army1.members.each { |member| puts member.name }
#
#   puts army2.name
#   puts '------------'
#   army2.members.each { |member| puts member.name }
#
#   attacker = army1
#   defender = army2
#   winner = army1
#
#   loop do
#     attacker.attack(defender)
#     defender.clear_bodies
#     if defender.defeated?
#       winner = attacker
#       break
#     end
#
#     temp = attacker
#     attacker = defender
#     defender = temp
#   end
#
#   puts "The winner is #{winner.name}."
#   puts 'Survivors:'
#   puts '----------'
#   winner.living_members.each { |member| puts member.name }
# end
