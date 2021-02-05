class Dice
  attr_reader :tracked_scores, :current_score

  def initialize (current_score = 0)
    @tracked_scores = []
    @current_score = current_score
  end

  def roll(number = 1)
    scores = 0
    number.times { scores += (rand(1..6)) }
    @tracked_scores << scores
    scores
  end

  def current_score
    @tracked_scores.each { |score| @current_score += score }
    return @current_score
  end

end
