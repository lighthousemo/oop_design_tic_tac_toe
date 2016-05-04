require 'colorize'
require 'ruby-progressbar'

module UserInterface
  def show_start_game
    puts "TIC - TAC - TOE".colorize(:red)
    progressbar = ProgressBar.create
    100.times do
      sleep 0.01
      progressbar.increment
    end
  end

  def print_board(board)
    clear_screen
    puts "+---------------+"
    puts "|   | 1 | 2 | 3 |"
    board.rows.each_with_index do |row, row_index|
      puts "+---------------+"
      print "| #{row_index + 1} |"
      row.each { |tile| print_tile(tile) }
      print "\n"
    end
    puts "+---------------+\n"
  end

  def print_tile(tile)
    if tile.value
      if tile.value == "x"
        print " #{tile.value} ".colorize(:red)
      else
        print " #{tile.value} ".colorize(:green)
      end
      print "|"
    else
      print "   |"
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

  def clear_screen
    Gem.win_platform? ? (system "cls") : (system "clear")
  end

end