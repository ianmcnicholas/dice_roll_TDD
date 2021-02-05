class Dice
  attr_reader :tracked_scores

  def initialize
    @tracked_scores = []
  end

  def roll(number = 1)
    scores = []
    number.times { scores.push(rand(1..6)) }
    @tracked_scores << scores
    scores
  end

end
