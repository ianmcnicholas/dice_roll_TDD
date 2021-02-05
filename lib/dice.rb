class Dice
  attr_reader :tracked_scores

  def initialize
    @tracked_scores = []
  end

  def roll(number = 1)
    scores = 0
    number.times { scores += (rand(1..6)) }
    @tracked_scores << scores
    scores
  end


end
