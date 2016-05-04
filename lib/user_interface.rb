# This module contains the methods that represent the user interface.
# Design Goal: 
# 1. We should be able to swap out this module with another
# module that uses a different kind of interface: ex web interface.
# 2. This module should not contain any game logic
module UserInterface
  def show_start_game
    puts "TIC - TAC - TOE"
  end

  def print_board(board)
    board.rows.each do |row|
      row.each do |tile|
        print "[ #{tile.value} ] "
      end
      print "\n"
    end
  end

  def ask_player_for_name(label = "the player")
    print "Enter the name of #{label}: "
    gets.chomp
  end

  # Ask the player to enter the row and column of their next move
  # TODO: Handle bad user input here.
  # Q: Should we handle the case when the row and 
  #    column are already taken in the UserInterface class?
  def ask_player_for_move(player)
    print "#{player} - enter your next move (row, column): "
    row_col = gets.chomp
    row, col = row_col.split(",").map {|row_or_col| row_or_col.to_i }
  end

end