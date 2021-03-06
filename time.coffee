command: "date +\"%H:%M:%S\""

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <div class="time"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".time span:first-child", el).text("  #{output}")
    $icon = $(".time span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-clock-o")

style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  font-weight: Bold
  right: 10px
  top: 3px
"""
