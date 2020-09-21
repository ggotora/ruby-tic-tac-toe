class Player
  attr_writer :name, :character

  def initialize(name, character)
    @name = name
    @character = character
  end

  def name
   @name
  end
end


class Game 
  attr_writer :board

  def initialize
  end

  def check_winner(plays, boards_for_win=[[1, 2, 3], [1, 4, 7], [1, 5, 9], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])
    win = false
    boards_for_win.each do |board|
      first_char = plays[board[0] - 1]
      win = [plays[board[0] - 1], plays[board[1] - 1], plays[board[2] - 1]] == [first_char, first_char, first_char]
      break if win
    end
    win
  end
    
  def check_draw(plays, boards_for_win=[[1, 2, 3], [1, 4, 7], [1, 5, 9], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])
    draw = true

    boards_for_win.each do |board|
    winner_board = [plays[board[0] - 1], plays[board[1] - 1], plays[board[2] - 1]]
    puts "winner_board & ['X'] = #{winner_board & ['X']}"
    puts "winner_board & ['O'] = #{winner_board & ['O']}"
    draw = false if winner_board & ['X'] == [] || winner_board & ['O'] == []
    end

    draw
  end
end