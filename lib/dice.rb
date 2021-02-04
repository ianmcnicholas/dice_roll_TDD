class Dice
  def roll(number = 1)
    scores = []
    number.times { scores.push(rand(1..6)) }
    scores

  end
end
