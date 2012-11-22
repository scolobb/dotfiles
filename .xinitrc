#exec gnome-session

# Setup the brightness/contrast of the display.
eval `nvidia-settings -l`

# Setup the keyboard rates.
eval `xset r rate 150 100`

# Launch the synergy server.
#eval `synergys -c /etc/synergy.conf`

xscreensaver -no-splash &

ssh-agent awesome
