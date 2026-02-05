require 'pry'
class Show
  def initialize(board) #need to add in Game initialize : @show = Show.new(board) when Board.new is created
    @board = board
  end

  def clear_screen()
    system("clear") || system("cls") #allow using cmd clear or cls to empty Terminal before showing board again
  end

  def show_board(board)
    clear_screen
    separator = "-" * 13
    puts ""
    puts "     1   2   3"
    puts separator
    puts "A  | #{cell("A1")} | #{cell("A2")} | #{cell("A3")} |"
    puts separator
    puts "B  | #{cell("B1")} | #{cell("B2")} | #{cell("B3")} |"
    puts separator
    puts "C  | #{cell("C1")} | #{cell("C2")} | #{cell("C3")} |"
    puts separator
    puts ""
  end

  private #prevent method cell to be call by other method external of class Show (Game, Board, Player, etc.)
  def cell(position)
    value = @board.cases[position].case_state #refers to object Board / attr @cases hash / then acces to case key "A1" / then its value = "X", "O" 
    if value.nil?
      " " 
    else 
      value
    end
  end
end
#binding.pry