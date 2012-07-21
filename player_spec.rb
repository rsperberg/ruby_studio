require_relative 'player'

describe Player do
    before do
        @initial_health = 150
        @player = Player.new("larry",@initial_health)
    end

  # examples go here
  it "has a capitalized name" do
    @player.name.should == "Larry"
  end

  it "has an initial health" do
    @player.health.should == 150
  end

  it "has a string representation" do
    @player.to_s.should == "Hi! I'm Larry, my health is 150 and my score is 155."
  end

  it "computes a score as a sum of the health and length of the name" do
    @player.score.should == @initial_health + 5
  end

  it "increases health by 15 when w00ted" do
    @player.w00t

    @player.health.should == @initial_health + 15
  end

  it "decreases health by ten when blammed" do
    @player.blam

    @player.health.should == @initial_health - 10
  end

context  "with a health greater than 100" do
  before do
        @initial_health = 150
        @player = Player.new("larry",@initial_health)
  end

  it "is strong" do
    @player.should be_strong
  end
end

context  "with a health equal to 100" do
  before do
        @initial_health = 100
        @player = Player.new("larry",@initial_health)
  end

  it "is wimpy" do
    @player.should_not be_strong
  end
end

end