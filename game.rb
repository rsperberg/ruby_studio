require_relative "player"
require_relative "die"

class Game
    attr_accessor :players
    attr_reader :gname
    def initialize(game_name)
        @gname = game_name
        @players = []
        @die = Die.new
    end

    def add_player(p)
        @players << p
    end

    def play
        puts "Number of players in #{@gname}: #{@players.size} ."
        @players.each do |stooge|
            p stooge.to_s
        end
        @players.each do |plyr|
            this_roll = @die.roll
            case this_roll
            when 5..6
                plyr.w00t
                p plyr
            when 3..4
                p "#{plyr.name} was skipped"
            else
                plyr.blam                
                 p plyr
           end

  #          if this_roll >= 5
   #             p.w00t
   #         elsif  this_roll >=3
   #         else
   #             p.blam
   #         end
            p plyr.name + " health: #{plyr.health}. "
        end
    end
end

player1 = Player.new("larry",60)
player2 = Player.new("moe")
player3= Player.new("curly",125)
player4 = Player.new("shemp",80)

game1 = Game.new("Knuckleheads")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play

