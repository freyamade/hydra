require "./color_constants"

module Hydra
  class Color
    getter :index
    getter :name

    # Never do the same calculation twice
    CALCULATED_HASH = {} of UInt32 => String

    def initialize(color_name : String)
      @name = color_name
      @index = 0
      if COLORS[color_name]?
        @index = COLORS[color_name]
      end
    end

    # Find the closest color to the provided number and return that
    def initialize(color_code : UInt32)
      # If this colour code has been checked already, just return the cached colour
      if CALCULATED_HASH[color_code]?
        @name = CALCULATED_HASH[color_code].not_nil!
      else
        # Calculate the nearest color from the HEXES hash
        min_diff = Int64::MAX
        coords = {
          (color_code >> 0) & 255,
          (color_code >> 8) & 255,
          (color_code >> 16) & 255,
        }
        @name = ""
        HEXES.each do |hex, name|
          # Euclidean Distance in 3D space
          curr_coords = {
            (hex >> 0) & 255,
            (hex >> 8) & 255,
            (hex >> 16) & 255,
          }
          curr_diff = Math.sqrt(
            (coords[0] - curr_coords[0]).abs2 +
            (coords[1] - curr_coords[1]).abs2 +
            (coords[2] - curr_coords[2]).abs2
          )
          if curr_diff < min_diff
            min_diff = curr_diff
            @name = name
          end
        end

        # Remember the calculated variable
        CALCULATED_HASH[color_code] = @name
      end

      @index = 0
      if COLORS[@name]?
        @index = COLORS[@name]
      end
    end
  end
end
