require "./color_constants"

module Hydra
  class Color
    getter :index

    def initialize(color_name : String)
      @name = color_name
      @index = 0
      if COLORS[color_name]?
        @index = COLORS[color_name]
      end
    end

    # Find the closest color to the provided number and return that
    # def initialize(color_code : UInt32)
    # end
  end
end
