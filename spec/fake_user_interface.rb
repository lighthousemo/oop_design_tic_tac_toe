# This is a user interface that does not use gets / puts to
# make it easier for us to test the code.
# It implements all methods implemented by the real UserInterface module
module UserInterface
  def show_start_game
  end

  def print_board(board)
  end

  def ask_player_for_name(label = "the player")
    "Test Player"
  end

  def ask_player_for_move(player)
    [1,1]
  end

end