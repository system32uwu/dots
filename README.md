```bash
cd
clear
git clone --recurse-submodules https://github.com/system32uwu/dots.git
cd dots

rm -rf .git*
rm -rf README.md

cp -rf * ~/.config/

ln -sf ~/.mpd ~/.config/extras/mpd
ln -sf ~/.ncmpcpp ~/.config/extras/ncmpcpp
ln -sf ~/.config/scripts ~/.config/extras/scripts
ln -sf ~/.oh-my-zsh ~/.config/extras/oh-my-zsh

mv -rf extras/fonts/* ~/.fonts/
```

Change 

```lua
device_path = '/org/freedesktop/UPower/devices/battery_BAT1'
```

to

```lua
device_path = '/org/freedesktop/UPower/devices/battery_BAT0'
```

in the file `awesome/signal/battery.lua`, in my laptop the device is BAT1 but in most devices it's BAT0.