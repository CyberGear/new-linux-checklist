# new linux checklist

* super + t open terminal
* updates
* install tweak-tools
* dock size 28 ; position all displays
  * ubuntu: `gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false`
* link bin folder: `ln -s /home/data/ect/bin ~/bin`
* install sublime
* install git
* install [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#debianubuntu)
  * set it as default: `sudo update-alternatives --config x-terminal-emulator`
* bookmark /home/data/
* add lt/en keyboards
* https://extensions.gnome.org/extension/906/sound-output-device-chooser/
* install vim
* wget https://raw.githubusercontent.com/CyberGear/new-linux-checklist/master/replaceNautilusWithNemo.sh | bash
* isntall flameshot
* link print screen shortkut to command: flameshot gui
* :$ `gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"`
* :$ `gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"`

## Investigate
### Set new custom binding
`gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"`
### Set name:
`gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'`
### Set command:
`gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'`
### Set binding:
`gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'`
### Pipewire
https://linuxconfig.org/how-to-install-pipewire-on-ubuntu-linux
