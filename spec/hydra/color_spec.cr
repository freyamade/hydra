require "spec"
require "../../src/hydra/color"

describe Hydra::Color do
  it "can correctly calculate the nearest color for a number" do
    # #002366
    Hydra::Color.new(9062).index.should eq 17

    # #388697
    Hydra::Color.new(3704471).index.should eq 66
  end

  it "has the correct number of colours in the hash" do
    Hydra::Color::COLORS.size.should eq 256
  end

  it "has correct names for each of the hexcodes" do
    Hydra::Color::HEXES.each do |_, name|
      Hydra::Color::COLORS[name]?.should_not be_nil
    end
  end
end
