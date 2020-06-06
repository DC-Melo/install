#!/bin/bash
# Open Terminal and run

gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
# Then run
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
# Also you can toggle "intellihide" (dock dodges windows) on/off by

# gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true/false
# and set the intellihide mode by

# gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode 'OPTION'
# To get the available intellihide-mode options run

# gsettings range org.gnome.shell.extensions.dash-to-dock intellihide-mode
