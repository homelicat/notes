#/bin/sh

main="pcmanfm\nfirefox\napps\nconfig\nsystem"

apps="mousepad\ntelegram\ncura\nflameshot"

config="nm-connection-editor\nlxrandr\npavucontrol\nlxappearance"

system="restart\nlogout\nreboot\npoweroff"

chosen=$(echo "$main" | dmenu -i -fn 'Terminus-12')

case "$chosen" in
	apps) chosen=$(echo "$apps" | dmenu -i -fn 'Terminus-12') ;;
	config) chosen=$(echo "$config" | dmenu -i -fn 'Terminus-12') ;;
	system) chosen=$(echo "$system" | dmenu -i -fn 'Terminus-12') ;;
	*) eval $chosen; exit;;
esac 
case "$chosen" in
	logout) i3-msg exit ;;
	restart) i3-msg restart;;
	telegram) ~/.telegram/Telegram;;
	reboot) systemctl reboot;;
	poweroff) systemctl poweroff;;
	*) eval $chosen; exit;;
esac
	
