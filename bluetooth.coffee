command: "/usr/local/bin/blueutil status |awk '{print $2}'"

refreshFrequency: 30000

render: (output) ->
  """
  <div class="bluetooth"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $icon = $(".bluetooth span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (output) ->
    return if output == "off\n"
        "fa-times"
    else
        "fa-bluetooth"

style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  right: 30px
  bottom: 3px
"""
