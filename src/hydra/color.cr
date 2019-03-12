module Hydra
  class Color
    COLORS = {
      "black"  => 0,
      "red"    => 1,
      "green"  => 2,
      "yellow" => 3,
      "blue"   => 4,
      "pink"   => 5,
      "cyan"   => 6,
      "white"  => 7,
    }

    getter :index

    def initialize(color_name : String)
      @name = color_name
      @index = 0
      if COLORS[color_name]?
        @index = COLORS[color_name]
      end
    end
  end
end
