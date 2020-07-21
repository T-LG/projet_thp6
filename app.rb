require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("jose")
player2 = Player.new("josiane")

puts "A ma gauche #{player1.name} avec #{player1.life_points} PV"
puts "A ma droite #{player2.name} avec #{player2.life_points} PV"

puts = "READY 2 FIGHT"
puts = "FIGHT"

while player1.life_points > 0 && player2.life_points > 0
  puts "Voici l'état des players"
  player1.show_state
  player2.show_state

puts "Passons en mode attack"

player1.attacks(player2)

if player2.life_points <= 0 
  break
else 
  puts "Voici l'état des players"
  puts "Passons en mode attack"

player2.attacks(player1)
  end
end

#binding.pry