require_relative "game"

player1 = Player.new("larry",60)
player2 = Player.new("moe")
player3= Player.new("curly",125)
player4 = Player.new("shemp",80)

game1 = Game.new("Knuckleheads")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play

chip1 = Player.new("alvin",85)
chip2 = Player.new("theodore",105)
chip3 = Player.new("simon")

game2 = Game.new("Chipmunks")
game2.add_player(chip1)
game2.add_player(chip2)
game2.add_player(chip3)
game2.play
