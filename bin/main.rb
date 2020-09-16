#!/usr/bin/env ruby

puts 'Welcome to our Tic-Tac-Toe Game!'

puts 'Player 1, please type your beautiful name?'
player_one_name = gets.chomp
puts "Nice name #{player_one_name}!"
puts 'Please, notice that, from now on, you are going to be represented by the "X" characters on the board, right?'
gets.chomp

puts 'Player 2, how could we call this beautiful face?'
player_two_name = gets.chomp
puts "Huuummmm #{player_two_name}, I was pretty aware that your name would be also beautiful!"
puts "As #{player_one_name} is already using the 'X' character, and we don't to give you the 'Y', you are going to be the 'O' character, nice?"
gets.chomp

puts "#{player_one_name} and #{player_two_name}, please promise me you won't forget your characters?"
gets.chomp

puts "Ok #{player_one_name} and #{player_two_name}, lets to the nuts and bolts!"
puts 'Here is the board of your game, with the respective number for each position, ok?'
plays = [1,2,3,4,5,6,7,8,9]

def print_board(plays)
  puts " #{plays[0]} | #{plays[1]} | #{plays[2]}"
  puts " #{plays[3]} | #{plays[4]} | #{plays[5]}"
  puts " #{plays[6]} | #{plays[7]} | #{plays[8]}"
end

puts print_board(plays)
play = ''
def catch_play
  @play = ''
  while @play == ''
    begin
      @play = gets.chomp.to_i
    rescue
      'Ops, it seems you did not type a number between 1-9'
    end
  end  
end

call_for_play_phrases = ["So now, PLAYER, could you please start the game choosing one of the slots in the board?","PLAYER, now it's your turn!","PLAYER}, no more. Choose your slot please.", "PLAYER, please don't let your oponent's plan to conquer the world be sucessful!", "PLAYER, breath and think twice your next play, it can be not so easy as you think!"]

comment_play_phrases = ["Huummm... wise fox play!","WoW! I'm noticing this will be a giant's game!","Huummm!","ok",'Hey, how many years did you study this game?',"Couldn't you think something better than this??","Well I don't like this play, but anyway...","You never played this before, right?","... so amateur","Wow!!! Now I see your potential!"]

9.times do |i|
  if i.even?
    player = player_one_name.dup 
    char = 'X'
  else
    player = player_two_name.dup 
    char = 'O'
  end
  puts call_for_play_phrases[rand(call_for_play_phrases.size - 1)].gsub('PLAYER',player)
  catch_play
  plays[play - 1] = play
end
