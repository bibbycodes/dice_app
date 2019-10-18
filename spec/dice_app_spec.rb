require 'dice_app'

describe Dice do
  context "When Using the Dice Class" do
    it "should return a radom integer between 1 and 6 when using the roll dice method" do
    end

    it "should return a number between 1 and 6" do
      dice = Dice.new
      expect(dice.roll).to be_between(1,6)
    end

  end
end