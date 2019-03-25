module Hydra
  class Keypress
    MAPPING = {
          1 => "ctrl-a",
          3 => "ctrl-c",
          5 => "ctrl-e",
         11 => "ctrl-k",
         13 => "enter",
         14 => "ctrl-n",
         19 => "ctrl-s",
         23 => "ctrl-w",
         24 => "ctrl-x",
         27 => "escape",
        127 => "backspace",
        338 => "page_down",
        339 => "page_up",
      65514 => "right",
      65515 => "left",
      65516 => "down",
      65517 => "up",
      65522 => "delete",
    }

    getter :name
    getter :char
    @ctrl_pressed : Bool
    @char : String
    @name : String

    def initialize(key : UInt32)
      if MAPPING[key]?
        @name = MAPPING[key]
        @char = ""
      else
        @name = key.chr.to_s
        @char = key.chr.to_s
      end
      @ctrl_pressed = (@name =~ /^ctrl-/ ? true : false)
    end

    def ctrl_pressed? : Bool
      @ctrl_pressed
    end
  end
end
