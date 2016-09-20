require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display

  def initialize(cursor = Cursor.new([0, 0], board = Board.new))
    @cursor = cursor
    @board = board
  end

  def render
    puts "  #{(0..7).to_a.join(" ")}"
    @board.grid.each_with_index do |row, i|
      puts "#{i} #{row.join(" ")}"
    end
  end

  def test_render
    while true
      system('clear')
      render
      @cursor.get_input
    end
  end

end

d = Display.new.test_render
