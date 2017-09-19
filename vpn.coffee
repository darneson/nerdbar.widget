command: "/usr/local/bin/ip a |grep utun1 || echo 'none'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="vpn"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $icon = $(".vpn span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (output) ->
    return if output == "none\n"
        "fa-times"
    else
        "fa-globe"

style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  right: 50px
  bottom: 3px
"""
