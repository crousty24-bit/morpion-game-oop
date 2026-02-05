require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'views/show'
require 'app/board'
require 'app/board_case'


def perform
  loop do
    game = Game.new
    while game.status == "on going"
      game.play_turn
    end
    game.game_end
    puts "Play again? (y/n)"
    answer = gets.chomp.downcase
    break if answer != "y"
    game.new_round
  end
end

perform