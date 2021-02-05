require './lib/dice.rb'
describe Dice do
  it "rolls a dice" do
    expect(subject).to respond_to(:roll).with(1).argument
  end

#  it "tracks rolls" do
#    expect(subject).to have_attribute(:tracked_scores)
#  end

  it "when rolled returns a number between 1 and 6" do
    expect(subject.roll).to be_between(1, 6)
  end

  it "when 7 dice are rolled, expects score to exceed 6" do
    expect(subject.roll(7)).to be > 6

  end

  it "expects tracked_rolls to return historical rolls" do
    5.times { subject.roll }
    expect(subject.tracked_scores.length).to eq 5
  end

  it "expects current_score method to be current score" do
    5.times { subject.roll }
    5.times { subject.roll }
    expect(subject.current_score).to be_between(10, 60)
  end


end
