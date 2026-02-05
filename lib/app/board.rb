class Board
  attr_accessor :cases, :count_turn

  def initialize
    @cases = {} #Initializing board's hash
    @count_turn = 0
    positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

    positions.each do |position|
      @cases[position] = BoardCase.new(position, " ")
    end
  end

  def victory?
    @victory_scenarios = [
    ["A1","A2","A3"], ["B1","B2","B3"], ["C1","C2","C3"],
    ["A1","B1","C1"], ["A2","B2","C2"], ["A3","B3","C3"],
    ["A1","B2","C3"], ["A3","B2","C1"]
  ]
    victory_scenarios.each do |scenario|
      case1_state = @cases[scenario[0]].case_state
      case2_state = @cases[scenario[1]].case_state
      case3_state = @cases[scenario[2]].case_state
    
    if case1_state == case2_state && case1_state == case3_state && case1_state != " "
    return case1_state
    end

    if count_turn ==  9
      return "Draw"
    end

    return nil
  end
end

