require './lib/dice.rb'
describe Dice do
  it "rolls a dice" do
    expect(subject).to respond_to(:roll).with(1).argument
  end

#  it "tracks rolls" do
#    expect(subject).to have_attribute(:tracked_scores)
#  end

  it "when rolled returns a number between 1 and 6" do
    expect(subject.roll[0]).to be_between(1, 6)
  end

  it "when 4 dice are rolled, expects 4 outcomes" do
    expect(subject.roll(4).length).to eq(4)

  end

  it "expects tracked_rolls to return historical rolls" do
    5.times { subject.roll }
    expect(subject.tracked_scores.length).to eq 5
  end


end
