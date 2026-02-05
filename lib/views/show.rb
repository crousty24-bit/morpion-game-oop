class Show
  def initialize(board)
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
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end

  private #prevent method cell to be call by other method external of class Show (Game, Board, Player, etc.)
  def cell(position)
    value = @board.cases[position].value #refers to Board / attr cases [] / then acces to case key "A1" / then its value = "X", "O" 
    if value.nil? 
      " " 
    else 
      value
    end
  end
end