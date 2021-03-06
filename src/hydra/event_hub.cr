require "./binding"
require "logger"

module Hydra
  class EventHub

    def self.char_to_event(char : Int32) String
      return "keypress.##{char}" unless CHARS_TO_EVENTS.has_key?(char)
      CHARS_TO_EVENTS[char]
    end

    def initialize
      @register = {} of String => Application | Element
      @bindings = {} of String => Array(Binding)

      @logger = Logger.new(nil) # (File.open("./event_debug.log", "w"))
      @logger.level = Logger::DEBUG

      @focus = "application"
    end

    def register(key : String, triggerable : Application | Element)
      raise "Id already registered" if @register[key]?
      @register[key] = triggerable
      triggerable.on_register(self)
    end

    def focus(identifier : String)
      @focus = identifier
    end

    def unfocus()
      @focus = "application"
    end

    def has_focus?(identifier : String) : Bool
      @focus == identifier
    end

    def bind(focus : String, event : String, target : String, behavior : String)
      binding = Binding.new(focus: focus, target: target, behavior: behavior, blocking: true)
      add_binding(event, binding)
    end

    def bind(event : String, target : String, behavior : String)
      binding = Binding.new(target: target, behavior: behavior)
      add_binding(event, binding)
    end

   #def bind(event : String, &block : EventHub, Event, ElementCollection, State -> Bool)
   #  @bindings[event] = Array(Binding).new unless @bindings.has_key?(event)
   #  @bindings[event] << Binding.new(block)
   #end

    def bind(focus : String, event : String, &block : EventHub, Event, ElementCollection, State -> Bool)
      binding = Binding.new(focus: focus, block: block)
      add_binding(event, binding)
    end

    def bind(event : String, &block : EventHub, Event, ElementCollection, State -> Bool)
      binding = Binding.new(block: block)
      add_binding(event, binding)
    end

    private def add_binding(event, binding)
      @bindings[event] = Array(Binding).new unless @bindings.has_key?(event)
      @bindings[event] << binding
    end

    def broadcast(event : Event, state : State, elements : ElementCollection)
      @logger.debug "Start broacasting event #{event.name}"
      @logger.debug "Current focus is '#{@focus}'"
      # TODO: Ugly
      parts = event.name.split(".")
      parts.pop
      parts << "*"
      other_name = parts.join(".")

      bindings = Array(Binding).new
      bindings += @bindings[event.name] if @bindings[event.name]?
      bindings += @bindings[other_name] if @bindings[other_name]?

      bindings.sort { |a, b| (a.target == @focus ? 0 : 1) <=> (b.target == @focus ? 0 : 1)}.each do |binding|
        @logger.debug "Binding candidate: #{binding.inspect}"
        if binding.focus && binding.focus != @focus
          @logger.debug "Skipping non focused binding..."
          next
        end
        if binding.behavior == ""
          return unless binding.proc.call(self, event, elements, state)
        else
          trigger(binding.target, binding.behavior, binding.params.merge({:event => event.name}))
          return if binding.blocking?
        end
      end
    end

    def trigger(target : String, behavior : String, params = Hash(Symbol, String).new)
      return unless @register[target]?
      @register[target].trigger(behavior, params)
    end
  end
end
