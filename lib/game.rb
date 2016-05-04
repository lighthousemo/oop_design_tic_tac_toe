# Game logic for tic tac toe game
class Game
  include UserInterface

  attr_reader :current_player, :winner, :player1, :player2, :board
  
  def initialize
    show_start_game
    @player1 = Player.new(ask_player_for_name("player 1"), "x")
    @player2 = Player.new(ask_player_for_name("player 2"), "o")
    @board = Board.new()

    @current_player = @player1
    @winner = nil
  end

  def start_game
    while !@winner
      play_next_turn
      @winner = find_winner
      switch_current_player
    end

    # Question: What is wrong with the line below, design wise?
    puts "Game over. The winner is #{@winner}"
  end

  def play_next_turn
    print_board(board)
    row, col = ask_player_for_move(current_player.name)
    @board.record_move(row, col, current_player.marker)
    # Question: Which one do you think is better?
    #   Should we pass the whole player object to the board class
    #   or is it better to just pass the value?
    # board.record_move(row, col, @current_player.value)
    # board.record_move(row, col, @current_player)
  end


  # Return true if the game is over
  def find_winner
    # check if the board contains a row of x's
    # check if the board contains a column of x's
    # check if the board diagonals have x's
    # if any of the above are true, return @player1 as the winner
    # repeat the above for o's

    # Question: It looks like it would be useful for us to
    # have a method that can return an array with all the 
    # values on a row / column / diagonal.
    #   ex: get_row(2)
    #       # => [Tile, Tile, Tile]
    # Which class should implement this method?
  end

  def switch_current_player
    @current_player = next_player
  end

  # Returns the player whose turn it is next
  def next_player
    current_player == player1 ? player2 : player1
  end

end