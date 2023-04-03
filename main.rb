
require './players.rb'
require './question.rb'

def player1_question
  while @player_2.lives != 0 && @player_1.lives != 0  do
  @addition_question = Question.new
  puts "#{@player_1.name}: #{@addition_question.question} "
  print "> "
  answer = $stdin.gets.chomp 
  
  if(answer.to_i == @addition_question.answer)
  puts "#{@player_1.name}: YES! you are correct"
  score
  player2_question
  else
  puts "#{@player_1.name}: Seriously? No!" 
  @player_1.lives -= 1 
  score
  @player_1.lives > 0 ? player2_question : final_score(@player_2)
  end 
end 
end

def player2_question
  while @player_2.lives != 0 && @player_1.lives != 0 do
  @addition_question = Question.new
  puts "#{@player_2.name}: #{@addition_question.question} "
  print "> "
  answer = $stdin.gets.chomp 
  
  if(answer.to_i == @addition_question.answer)
  puts "#{@player_2.name}: YES! you are correct"
  score
  player1_question
else
  puts "#{@player_2.name}: Seriously? No!" 
  @player_2.lives -= 1 
  score
  @player_2.lives > 0 ? player1_question : final_score(@player_1)
  end 
end 
end

def final_score(winner) 
  puts "#{winner.name} wins with a score of #{winner.lives}"
  puts "----- GAME OVER -----"
  puts "Good bye!"
end

def score
  puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  puts "---- NEW TURN -----"
end

def start
  puts "Please enter a name Player 1"

  print "> "
  player_1_name = $stdin.gets.chomp
  @player_1 = Player.new(player_1_name) 
  puts "Hello #{@player_1.name}, you have #{@player_1.lives} lives"
  
  puts
  puts "Please enter a name Player 2"

  print "> "
  player_2_name = $stdin.gets.chomp
  @player_2 = Player.new(player_2_name) 
  puts "Hello #{@player_2.name}, you have #{@player_2.lives} lives" 

  if(@player_1.name && @player_2.name) 
    player1_question
  end
  
end
 
start 

