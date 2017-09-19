command: "$HOME/.bin/net-stats"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <div class="net"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".net span:first-child", el).text("  #{@display(output)}")
    $icon = $(".net span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-cloud-download")

display: (output) =>
    usage = (bytes) ->
        kb = bytes / 1024
        usageFormat kb

    usageFormat = (kb) ->
        if kb > 1024
            mb = kb / 1024
            "#{parseInt(mb.toFixed(1))} M"
        else
            "#{parseInt(kb.toFixed(2))} K"

    args = output.split "^"

    downBytes = (Number) args[0]
    upBytes = (Number) args[1]

    return "#{usage(downBytes)} #{usage(upBytes)}"


style: """
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  text-overflow: ellipsis
  color: #ffffff
  font: 15px Input
  right: 475px
  top: 3px
"""
