require "spec_helper"
require "lib/zombie" # Zombie class from zombie.rb for 'describe Zombie do's reference

# http://rspec.codeschool.com/levels/1
describe Zombie do # Zombie class, not string, from zombie.rb
  it "is named Ash" do
    zombie = Zombie.new
    expect(zombie.name) == "Ash" # replaced zombie.name.should == "Ash" because of deprecation warning in console
  end

  it "has no brains" do
    zombie = Zombie.new
    expect(zombie.brains).to be < 1 # replaced zombie.brains.should < 1 due to deprecation warning
  end

  it "should not be alive" do
    zombie = Zombie.new
    expect(zombie.alive) == false
  end

  it "should be rotting" do
    zombie = Zombie.new
    expect(zombie.rotting).to be true
  end

  it "should be taller than 5" do
    zombie = Zombie.new
    expect(zombie.height).to be > 5 # should be
    expect(zombie.height).to_not be 5 # should not be
  end

  it "is hungry" do
    zombie = Zombie.new
    expect(zombie).to be_hungry # hungry is a method, so has this syntax (all others are from the initializer). be_hungry underscore is required for test to pass.
  end

  # How to force pending test to check if failing tests are passing in big tests (pending stops this test form checking and saves time)
  xit "is pending" do # Adding x before it forces the test to 'pend'.
    zombie = Zombie.new
    expect(zombie.pending).to be true
  end
end