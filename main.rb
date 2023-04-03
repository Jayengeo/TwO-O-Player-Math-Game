
require './players.rb'

def start
  puts "Please enter a name Player 1"

  print "> "
  player_1_name = $stdin.gets.chomp
  player_1 = Player.new(player_1_name) 
  puts "Hello #{player_1.name}, you have #{player_1.lives} lives"
  
  puts
  puts "Please enter a name Player 2"

  print "> "
  player_2_name = $stdin.gets.chomp
  player_2 = Player.new(player_2_name) 
  puts "Hello #{player_2.name}, you have #{player_2.lives} lives"
end
 
start 

