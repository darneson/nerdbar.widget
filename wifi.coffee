command: "networksetup -getairportnetwork en0 |head -n +1 |cut -c 24-"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="wifi"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".wifi span:first-child", el).text("  #{output}")
    $icon = $(".wifi span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-wifi")


style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  right: 80px
  bottom: 3px
"""
