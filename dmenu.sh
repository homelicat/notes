#/bin/sh

choices="pcmanfm\nfirefox\ntelegram\nflameshot\nnm-connection-editor\nlxrandr\npavucontrol\ncura\nobs\nrestart\nlogout\nreboot\npoweroff"

chosen=$(echo "$choices" | dmenu -i -fn 'Terminus-12')

case "$chosen" in
	logout) i3-msg exit ;;
	restart) i3-msg restart;;
	telegram) ~/.telegram/Telegram;;
	reboot) systemctl reboot;;
	poweroff) systemctl poweroff;;
	*) eval $chosen;;
esac 
