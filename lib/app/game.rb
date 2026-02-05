class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :players, :show
  def initialize
    @board = Board.new
    @show = Show.new(@board)
    create_players
    @current_player = @players.first
    @status = "on going"
  end

  def create_players
    @players = []
    puts "Player 1 : please ENTER your name :"
    print "> "
    name1 = gets.chomp
    puts "Player 2 : please ENTER your name :"
    print "> "
    name2 = gets.chomp
    @players << Player.new(name1, "X")
    @players << Player.new(name2, "O")
  end

  def switch_players #allow to alternate between player 1 & player 2
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def play_turn
    @show.show_board
    puts "#{@current_player.name} | #{@current_player.symbol} is playing !"
    success = false
    while success == false
      puts "ENTER a position:"
      print "> "
      position = gets.chomp.upcase
      success = @board.play(position, @current_player.symbol)
      puts "Invalid move, try again." if success == false
    end
    switch_players
  end

  def new_round
    @board = Board.new
    @show = Show.new(@board)
    @status = "on going"
    @current_player = @players.first
    switch_players
  end

  def game_end
    result = @board.victory?
    if result == "Draw"
      @status = "draw"
      @show.show_board(@board)
      puts "It's a draw!"
      return true   # game ended
    end
    if result
      @status = @current_player
      @show.show_board(@board)
      puts "#{@current_player.name} wins!"
      return true   # game ended
    end
    false # game on going   
  end    
end