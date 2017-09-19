command: """
read -r running <<<"$(ps -ef | grep \"MacOS/iTunes\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "iTunes"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "<span class='title'>$theArtist -</span><class='artist'>$theName</>" || echo "Not Connected To iTunes"
"""

refreshFrequency: 2000

style: """
  position: absolute
  text-align: center
  font-family: Inconsolata-dz
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 15px Input
  height: 18px
  overflow: hidden
  text-overflow: ellipsis
  top: 3px
  width: 100%
"""

render: (output) -> """
  <div class="output">
    <div class="text"><span class='icon'> ♬ </span> #{output}</div>
  </div>
"""
