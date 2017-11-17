require "../src/hydra"

app = Hydra::Application.setup

app.add_element({
  :id => "prompt-2",
  :type => "prompt",
  :position => "center",
  :visible => "false",
  :label => "Prompt 2"
})

app.add_element({
  :id => "prompt-1",
  :type => "prompt",
  :position => "center",
  :visible => "false",
  :label => "Prompt 1"
})

app.add_element({
  :id => "logbox",
  :type => "logbox",
  :position => "40:0",
  :label => "Messages"
})

app.add_element({
  :id => "",
  :type => "text",
  :value => "Press c to show Prompt 1\nPress d to show Prompt 2\nPress ctrl-x to hide prompts\nPress q to quit",
  :label => "Commands"
})

# Create two prompts, activated by a different character
{ 1 => "c", 2 => "d" }.each do |index, char|
  app.bind("keypress.#{char}", "application") do |event_hub|
    if event_hub.has_focus?("prompt-#{index}")
      true
    else
      event_hub.trigger("prompt-#{index}", "show")
      event_hub.focus("prompt-#{index}")
      false
    end
  end

  app.bind("keypress.enter", "prompt-#{index}") do |event_hub, event, elements|
    if event_hub.has_focus?("prompt-#{index}")
      event_hub.trigger("prompt-#{index}", "hide")
      event_hub.unfocus
      element = elements.by_id("prompt-#{index}")
      event_hub.trigger("logbox", "add_message", { "message" => "Prompt #{index}: '#{element.value}'" })
      event_hub.trigger("prompt-#{index}", "clear")
      false
    else
      true
    end
  end
end

# Pressing ctrl + x will close all prompts
app.bind("keypress.ctrl-x", "application") do |event_hub|
  event_hub.trigger("prompt-1", "hide")
  event_hub.trigger("prompt-1", "clear")
  event_hub.trigger("prompt-2", "hide")
  event_hub.trigger("prompt-2", "clear")
  event_hub.unfocus
  true
end

# Pressing q will quit
app.bind("keypress.q", "application", "stop")

app.run
