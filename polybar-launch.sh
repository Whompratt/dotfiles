#!/usr/bin/env sh

# Kill active polybar instances
killall -q polybar

# Wait and ensure old instances are dead before continuing
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the fucking bar
polybar example &

echo "Bars launched."
