class Board

  attr_accessor :grid

  def self.grid_generate
   Array.new(8) {Array.new(8) { "#" } }
 end

 def initialize(grid = Board.grid_generate)
   @grid = grid
 end

  def move(start, end_pos)
  end

  def move_piece!(start, end_pos)
    if self[end_pos].nil?
      self[end_pos] = self[start]
      self[start] = nil # nilpiece object
    else
      puts "invalid move."
    end
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end

  def in_bounds?(pos)
    return true if
      (pos[0] <= 7 && pos[0] >= 0) &&
        (pos[1] <= 7 && pos[1] >= 0)
    false
  end

  def color_square(pos)
    self[pos] = self[pos].colorize(:green)
  end


end # exit Board class
