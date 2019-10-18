require 'dice_app'

describe Dice do
  context "When Using the Dice Class" do
    it "should return a number between 1 and 6" do
      dice = Dice.new
      expect(dice.roll).to be_between(1,6)
    end

  end
end

describe Game do
  context "When using the Game" do
    it {is_expected.to respond_to(:record)} 

    it "Should record dice rolls" do
      dice = Dice.new
      roll = dice.roll
      expect(subject.record(roll)).to eq(subject.instance_variable_get(:@record))
    end

    it "Should return the current score for any game" do
      dice = Dice.new
      roll_1 = dice.roll
      subject.record(roll_1)
      roll_2 = dice.roll
      subject.record(roll_2)
      expect(subject.score).to eq(roll_1 + roll_2)
    end
  end
end