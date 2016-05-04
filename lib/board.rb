class Board

  attr_reader :rows

  def initialize()
    @rows = [
      [Tile.new(), Tile.new(), Tile.new()],
      [Tile.new(), Tile.new(), Tile.new()],
      [Tile.new(), Tile.new(), Tile.new()]
    ]
  end

  # Change the value of the tile at row, col
  # Return the tile.
  def record_move(row, col, value)
    tile = @rows[row-1][col-1]
    tile.value = value
    tile
  end
end