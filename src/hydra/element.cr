require "./event_interface"
module Hydra
  class ElementEventInterface < EventInterface
    def initialize(target : Element)
      @target = target
    end
    def trigger(behavior : String, payload = Hash(Symbol, String).new) : Array(String)
      if behavior == "show"
        @target.show
        Array(String).new
      elsif behavior == "hide"
        @target.hide
        Array(String).new
      else
        super
      end
    end
  end
  class Element

    KLASSES = {
      "prompt" => Hydra::Prompt
    }

    getter :id
    getter :visible
    property :position
    @position : String
    property :event_interface
    @event_interface : ElementEventInterface

    # Workaround for the inability to use self in an initializer
    # https://github.com/crystal-lang/crystal/issues/4436
    def self.build(id : String)
      instance = new(id)
      instance.event_interface = ElementEventInterface.new(instance)
      instance
    end

    def self.build(specs : Hash(Symbol, String)) : Element
      raise "Element is missing an id: #{specs}" unless specs[:id]?
      id = specs[:id]
      raise "Element is missing a type: #{specs}" unless specs[:type]?
      klass = KLASSES[specs[:type]]
      element = klass.build(id)
      element.position = specs[:position] if specs[:position]?
      element.hide if specs[:visible]? && specs[:visible] == "false"
      element
    end

    def initialize(id : String)
      @id = id
      @event_interface = uninitialized ElementEventInterface
      @visible = true
      @position = "0:0"
    end

    def content
      "Content undefined for #{self.class.name}"
    end

    def width
      0
    end

    def height
      0
    end

    def show
      @visible = true
    end

    def hide
      @visible = false
    end

    def append(string : String)
    end

    def remove_last
    end
  end
end
