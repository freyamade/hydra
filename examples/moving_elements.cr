require "../src/hydra"

app = Hydra::Application.setup

app.add_element({
  :id => "commands",
  :type => "text",
  :position => "center",
  :value => "Press h to move left\nPress j to move down\nPress k to move up\nPress l to move right\nPress q to quit",
  :label => "Commands"
})

app.add_element({
  :id => "text_1",
  :type => "text",
  :position => "0:0",
  :value => "         \n Move me \n         "
})

app.bind("keypress.h") do |_, _, elements|
  element = elements.by_id("text_1")
  element.move(0, -1)
  true
end

app.bind("keypress.j") do |_, _, elements|
  element = elements.by_id("text_1")
  element.move(1, 0)
  true
end

app.bind("keypress.k") do |_, _, elements|
  element = elements.by_id("text_1")
  element.move(-1, 0)
  true
end

app.bind("keypress.l") do |_, _, elements|
  element = elements.by_id("text_1")
  element.move(0, 1)
  true
end

# Pressing q will quit
app.bind("keypress.q", "application", "stop")

app.run
app.teardown
