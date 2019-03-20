require "spec"
require "../../src/hydra/color"

describe Hydra::Color do
  it "can correctly calculate the nearest color for a number" do
    # #002366
    Hydra::Color.new(9062).index.should eq 17

    # #388697
    Hydra::Color.new(3704471).index.should eq 66
  end
end
