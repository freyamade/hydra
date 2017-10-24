require "./event_interface"
module Hydra
  class ApplicationEventInterface < EventInterface
    def initialize(target : Application)
      @target = target
    end
    def trigger(behavior : String, payload = Hash(Symbol, String)) : Array(String)
      if behavior == "stop"
        @target.stop
        Array(String).new
      else
        super
      end
    end
  end
  class Application
    property :event_interface
    @event_interface : ApplicationEventInterface

    # Workaround for the inability to use self in an initializer
    # https://github.com/crystal-lang/crystal/issues/4436
    def self.build(view : Hydra::View, event_hub : Hydra::EventHub)
      instance = new(view, event_hub)
      instance.event_interface = ApplicationEventInterface.new(instance)
      instance
    end
    def initialize(view : Hydra::View, event_hub : Hydra::EventHub)
      @view = view
      @event_interface = uninitialized ApplicationEventInterface
      @event_hub = event_hub
      @logger = Logger.new(File.open("./debug.log", "w"))
      @logger.level = Logger::DEBUG
    end
    def start
      @view.render
      @running = true
      while @running
        char = @view.getch
        sleep 0.01
        next unless char >= 0
        @logger.debug "#{char}: #{char.chr}"
        keypress = Keypress.new(char)
        event = Event.new("keypress.#{keypress.name}")
        event.keypress = keypress
        @event_hub.broadcast(event)
        @view.render
      end
      Crt.done
    end

    def stop
      @running = false
    end
  end
end
