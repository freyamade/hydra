require "./element"

module Hydra
  class Prompt < Element
    @cursor_position : Int32 = 0

    def content : Hydra::ExtendedString
      ExtendedString.new(box_content(@value))
    end

    private def box_content(content)
      content = content.insert @cursor_position, '|'
      if content.size > (width - 2)
        content = "…" + content[-(width - 3)..-1]
      end
      top_bar = "─" + @label.ljust(width - 3, '─')
      res = "┌" + top_bar + "┐\n"
      res += "│" + ExtendedString.escape(content.ljust(width - 2)) + "│\n"
      res += "└" + "─" * (width - 2) + "┘"
      res
    end

    def append(string : String)
      @value += string
      @cursor_position += 1
    end

    def remove_last
      # Remove character to left of cursor
      return if @cursor_position == 0
      remove_character_at! @cursor_position - 1
      @cursor_position -= 1
    end

    def value
      @value
    end

    def clear
      @value = ""
      @cursor_position = 0
    end

    def delete
      return if @cursor_position == @value.size
      # Delete the character to the right of the cursor
      remove_character_at! @cursor_position
    end

    def remove_character_at!(position : Int32)
      # Remove the character at the given position from the current value
      builder = String::Builder.new
      @value.each_char.with_index do |c, i|
        if i != position
          builder << c
        end
      end
      @value = builder.to_s
    end

    def trigger(behavior : String, payload = Hash(Symbol, String).new)
      case behavior
      when "append"
        append(payload[:char])
      when "remove_last"
        remove_last
      when "delete"
        delete
      when "clear"
        clear
      else
        super
      end
    end

    def on_register(event_hub : Hydra::EventHub)
      # Special handling for full stops
      event_hub.bind(id, "keypress..") do |eh|
        eh.trigger id, "append", {:char => "."}
        false
      end
      # Arrow keys to move cursor left and right
      # Left
      event_hub.bind(id, "keypress.left") do |eh|
        @cursor_position -= 1 unless @cursor_position == 0
        false
      end
      # Right
      event_hub.bind(id, "keypress.right") do |eh|
        @cursor_position += 1 unless @cursor_position == @value.size
        false
      end
      event_hub.bind(id, "keypress.*") do |eh, event|
        keypress = event.keypress
        if keypress
          if keypress.char != ""
            eh.trigger id, "append", {:char => keypress.char}
            next false
          elsif keypress.name == "backspace"
            eh.trigger id, "remove_last"
            next false
          elsif keypress.name == "delete"
            eh.trigger id, "delete"
            next false
          else
            next true
          end
        else
          next true
        end
      end
    end
  end
end
