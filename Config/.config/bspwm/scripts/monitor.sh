   if [[ $(xrandr -q | grep "DisplayPort-1 connected") ]];
   then
   xrandr --output DisplayPort-1  --mode 1280x1024 --pos 1920x900 --rotate normal \
            --output HDMI-A-0 --mode 1600x900 --pos 0x0 --rotate normal \
            --output HDMI-A-1 --primary --mode 1920x1080 --pos 0x900 --rotate normal
   fi