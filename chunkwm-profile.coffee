command: "$HOME/.bin/chunkwm-query -p"

refreshFrequency: 60000 # ms

render: (output) ->
  """
  <div class="kwm-mode"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".kwm-mode span:first-child", el).text("  #{output}")
    $icon = $(".kwm-mode span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-desktop")

style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  height: 16px
  left: 10px
  overflow: hidden
  bottom: 3px
  width: auto
"""
